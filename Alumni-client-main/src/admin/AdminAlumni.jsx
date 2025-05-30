import React, { useEffect, useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { FaPlus } from "react-icons/fa";
import axios from 'axios';
import { ToastContainer, toast } from 'react-toastify';
import defaultavatar from "../assets/uploads/defaultavatar.jpg"
import { baseUrl } from '../utils/globalurl';

const AdminAlumni = () => {
  const [alumni, setAlumni] = useState([]);
  const [csvFile, setCsvFile] = useState(null);

  useEffect(() => {
    axios.get(`${baseUrl}auth/alumni`)
      .then((res) => {
        setAlumni(res.data);
        console.log(res.data);
      })
      .catch((err) => console.log(err));
  }, []);

  const navigate = useNavigate();

  const delAlumni = (id) => {
    axios.delete(`${baseUrl}auth/alumni/${id}`)
      .then((res) => {
        toast.success(res.data.message);
        setAlumni(alumni.filter((e) => e.id !== id))
      })
      .catch((err) => console.log(err))
  }

  const handleFileChange = (e) => {
    setCsvFile(e.target.files[0]);
  }

  const handleUpload = () => {
    if (!csvFile) {
      toast.error("Please select a CSV file.");
      return;
    }

    const formData = new FormData();
    formData.append("file", csvFile);

    axios.post(`${baseUrl}auth/upload-alumnus`, formData, {
      headers: {
        'Content-Type': 'multipart/form-data'
      }
    })
      .then((res) => {
        toast.success("Upload successful!");
        setAlumni(res.data); // Assuming updated alumni list is returned
        window.location.reload();
      })
      .catch((err) => {
        console.error(err);
        toast.error("Upload failed. Please check your file.");
      });
  }

  return (
    <>
      <ToastContainer position="top-center" />

      <div className="container-fluid">

        <div className="col-lg-12">
          <div className="row mb-4 mt-4">
            <div className="col-md-6">
              <h5>Upload Alumni CSV</h5>
              <input
                type="file"
                accept=".csv"
                onChange={handleFileChange}
                className="form-control mb-2"
              />
              <button className="btn btn-success" onClick={handleUpload}>Upload</button>
            </div>
          </div>

          <div className="row">
            <div className="col-md-12 col-sm-8">
              <div className="card">
                <div className="card-header">
                  <b>List of Alumni ({alumni.length})</b>
                </div>
                <div className="card-body">
                  <div className="table-responsive">
                    <table className="table table-responsive-sm table-condensed table-bordered table-hover">
                      <thead>
                        <tr>
                          <th className="text-center">#</th>
                          <th className="">Avatar</th>
                          <th className="">Name</th>
                          <th className="">Course Graduated</th>
                          <th className="">Status</th>
                          <th className="text-center">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        {alumni.length > 0 ? (
                          alumni.map((a, index) => (
                            <tr key={index}>
                              <td className="text-center">{index + 1}</td>
                              <td className="text-center">
                                <div className="avatar">
                                  {a.avatar ? (
                                    <img src={`${baseUrl}${a.avatar}`} className="gimg" alt="avatar" />
                                  ) : (
                                    <img src={defaultavatar} className="gimg" alt="avatar" />
                                  )}
                                </div>
                              </td>
                              <td>
                                <p><b>{a.name}</b></p>
                              </td>
                              <td>
                                <p><b>{a.course}</b></p>
                              </td>
                              <td className="text-center">
                                {a.status === 1 && <span className="badge badge-primary">Verified</span>}
                                {a.status === 0 && <span className="badge badge-secondary">Not Verified</span>}
                              </td>
                              <td className="text-center">
                                <div className="d-flex justify-content-center">
                                  <button
                                    onClick={() => navigate("/dashboard/alumni/view", { state: { status: "view", data: a } })}
                                    className="btn btn-sm btn-outline-primary view_alumni"
                                    type="button"
                                  >View</button>
                                  <button
                                    onClick={() => delAlumni(a.id)}
                                    className="btn btn-sm btn-outline-danger delete_alumni ms-1"
                                    type="button"
                                  >Delete</button>
                                </div>
                              </td>
                            </tr>
                          ))
                        ) : (
                          <tr>
                            <td colSpan={6} className="text-center">No Alumni Available</td>
                          </tr>
                        )}
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </>
  )
}

export default AdminAlumni;
