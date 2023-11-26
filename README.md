# MR_Endsem

## Indexing

1. Camera calibration
    1. DLT in 2D homographies
        1. Estimation problems in 2D Projective Transformations: MVG pg 106
        2. DLT - MVG pg 107
            - Basic Algorithm - pg 109
            - Normalized DLT - pg 127
        3. Least-squares solution of homogeneous equations - pg 593
    2. DLT for camera calibration
        1. DLT in a Nutshell - `01_camera_calib/00_stachniss_DLT-calibration.pptx.pdf` pg 47
        2. GP notes - `01_camera_calib/GP notes/00_stachniss_DLT_GP.pdf`
    3. Zhang's method
        1. See `01_camera_calib/paper_Zhang.pdf`
        2. Decomposition of H into calibration and extrinsics - `01_camera_calib/00_stachniss_DLT-calibration.pptx.pdf` - pg 66
    4. Homogenous coordinates
        1. `01_camera_calib/01_stachniss_homogenous_projective_geometry.pptx.pdf`
            - important 3D transformations: pg 62
    5. PnP
        1. P3P formulation - `01_camera_calib/02_Camera_Calibration_P3P_Stachniss.pdf`
        2. EPnP - `01_camera_calib/paper_EPnP.pdf`
2. MVG
    1. Epipolar Geometry Theory - MVG pg 257
        1. Properties of F - pg 263
        2. Extraction of camera from F (_not important_) - Pg 271
        3. Essential matrix - Pg 275
    2. Computation of F - Pg 297
        1. Normalized 8 point algorithm - Pg 300
        2. Special cases of F computation - Pg 311
    3. Summaries available in `02_mvg/00_feiFeiLi_Epipolar.pdf`
    4. Rectification
        1. (_Not that great_) `02_mvg/00_feiFeiLi_Epipolar.pdf` - Pg 45
        2. `03_stereo_rect/00_Stereo_RectificationCMU.pdf`
        3. (_But, doesn't really explain anything important) Im age Rectification - MVG Pg 321
3. Bundle Adjustment
    1. Cyrill
        1. Intro - `04_BA/00_Cyrill_BA.pdf`
        2. Numerics - `04_BA/02_Cyrill_BA2.pdf`
    2. `04_BA/01_notion_page_BA.pdf`
4. EKF
    1. We're so done
