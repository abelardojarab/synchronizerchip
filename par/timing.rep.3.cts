Path 1: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (^) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xfsm_unitxstate_reg_regx0x/Q (v) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.116
+ Phase Shift                   1.000
= Required Time                 0.968
- Arrival Time                  0.506
= Slack Time                    0.462
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +--------------------------------------------------------------------------------------------------------------------------------+ 
     |                    Pin                     |  Edge |                Net                 |  Cell   | Delay | Arrival | Required | 
     |                                            |       |                                    |         |       |  Time   |   Time   | 
     |--------------------------------------------+-------+------------------------------------+---------+-------+---------+----------| 
     | clk2                                       |   ^   | clk2                               |         |       |   0.041 |    0.503 | 
     | clk2__L1_I0/A                              |   ^   | clk2                               | INVX8   | 0.001 |   0.042 |    0.504 | 
     | clk2__L1_I0/Y                              |   v   | clk2__L1_N0                        | INVX8   | 0.021 |   0.063 |    0.525 | 
     | clk2__L2_I0/A                              |   v   | clk2__L1_N0                        | INVX4   | 0.000 |   0.063 |    0.525 | 
     | clk2__L2_I0/Y                              |   ^   | clk2__L2_N0                        | INVX4   | 0.020 |   0.084 |    0.545 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/CLK |   ^   | clk2__L2_N0                        | DFFSR   | 0.000 |   0.084 |    0.546 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/Q   |   v   | talker_str_1xfsm_unitxstate_regx0x | DFFSR   | 0.116 |   0.200 |    0.661 | 
     | U12/A                                      |   v   | talker_str_1xfsm_unitxstate_regx0x | BUFX2   | 0.000 |   0.200 |    0.661 | 
     | U12/Y                                      |   v   | n11                                | BUFX2   | 0.045 |   0.245 |    0.706 | 
     | U14/A                                      |   v   | n11                                | INVX1   | 0.000 |   0.245 |    0.707 | 
     | U14/Y                                      |   ^   | talker_str_1xfsm_unitxn6           | INVX1   | 0.007 |   0.252 |    0.714 | 
     | talker_str_1xfsm_unitxU11/D                |   ^   | talker_str_1xfsm_unitxn6           | AOI22X1 | 0.000 |   0.253 |    0.714 | 
     | talker_str_1xfsm_unitxU11/Y                |   v   | talker_str_1xfsm_unitxn9           | AOI22X1 | 0.134 |   0.387 |    0.848 | 
     | U9/A                                       |   v   | talker_str_1xfsm_unitxn9           | BUFX2   | 0.000 |   0.387 |    0.848 | 
     | U9/Y                                       |   v   | n8                                 | BUFX2   | 0.061 |   0.448 |    0.910 | 
     | U1/B                                       |   v   | n8                                 | OR2X2   | 0.000 |   0.448 |    0.910 | 
     | U1/Y                                       |   v   | n6                                 | OR2X2   | 0.050 |   0.498 |    0.960 | 
     | U8/A                                       |   v   | n6                                 | INVX1   | 0.000 |   0.498 |    0.960 | 
     | U8/Y                                       |   ^   | n7                                 | INVX1   | 0.008 |   0.506 |    0.968 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D   |   ^   | n7                                 | DFFSR   | 0.000 |   0.506 |    0.968 | 
     +--------------------------------------------------------------------------------------------------------------------------------+ 
Path 2: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (^) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xsync_unitxsync_reg_reg/Q    (v) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.116
+ Phase Shift                   1.000
= Required Time                 0.968
- Arrival Time                  0.502
= Slack Time                    0.466
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +--------------------------------------------------------------------------------------------------------------------+ 
     |                   Pin                    |  Edge |           Net            |  Cell   | Delay | Arrival | Required | 
     |                                          |       |                          |         |       |  Time   |   Time   | 
     |------------------------------------------+-------+--------------------------+---------+-------+---------+----------| 
     | clk2                                     |   ^   | clk2                     |         |       |   0.041 |    0.508 | 
     | clk2__L1_I0/A                            |   ^   | clk2                     | INVX8   | 0.001 |   0.042 |    0.508 | 
     | clk2__L1_I0/Y                            |   v   | clk2__L1_N0              | INVX8   | 0.021 |   0.063 |    0.530 | 
     | clk2__L2_I0/A                            |   v   | clk2__L1_N0              | INVX4   | 0.000 |   0.064 |    0.530 | 
     | clk2__L2_I0/Y                            |   ^   | clk2__L2_N0              | INVX4   | 0.020 |   0.084 |    0.550 | 
     | talker_str_1xsync_unitxsync_reg_reg/CLK  |   ^   | clk2__L2_N0              | DFFSR   | 0.000 |   0.084 |    0.550 | 
     | talker_str_1xsync_unitxsync_reg_reg/Q    |   v   | n14                      | DFFSR   | 0.117 |   0.201 |    0.667 | 
     | U10/A                                    |   v   | n14                      | BUFX2   | 0.000 |   0.201 |    0.667 | 
     | U10/Y                                    |   v   | rcv                      | BUFX2   | 0.038 |   0.239 |    0.705 | 
     | U13/A                                    |   v   | rcv                      | INVX1   | 0.000 |   0.239 |    0.705 | 
     | U13/Y                                    |   ^   | talker_str_1xfsm_unitxn7 | INVX1   | 0.003 |   0.242 |    0.709 | 
     | talker_str_1xfsm_unitxU11/B              |   ^   | talker_str_1xfsm_unitxn7 | AOI22X1 | 0.000 |   0.242 |    0.709 | 
     | talker_str_1xfsm_unitxU11/Y              |   v   | talker_str_1xfsm_unitxn9 | AOI22X1 | 0.140 |   0.382 |    0.848 | 
     | U9/A                                     |   v   | talker_str_1xfsm_unitxn9 | BUFX2   | 0.000 |   0.382 |    0.848 | 
     | U9/Y                                     |   v   | n8                       | BUFX2   | 0.061 |   0.443 |    0.910 | 
     | U1/B                                     |   v   | n8                       | OR2X2   | 0.000 |   0.443 |    0.910 | 
     | U1/Y                                     |   v   | n6                       | OR2X2   | 0.050 |   0.493 |    0.960 | 
     | U8/A                                     |   v   | n6                       | INVX1   | 0.000 |   0.493 |    0.960 | 
     | U8/Y                                     |   ^   | n7                       | INVX1   | 0.008 |   0.501 |    0.968 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D |   ^   | n7                       | DFFSR   | 0.000 |   0.502 |    0.968 | 
     +--------------------------------------------------------------------------------------------------------------------+ 
Path 3: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (^) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xfsm_unitxstate_reg_regx0x/Q (^) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.116
+ Phase Shift                   1.000
= Required Time                 0.968
- Arrival Time                  0.403
= Slack Time                    0.565
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +--------------------------------------------------------------------------------------------------------------------------------+ 
     |                    Pin                     |  Edge |                Net                 |  Cell   | Delay | Arrival | Required | 
     |                                            |       |                                    |         |       |  Time   |   Time   | 
     |--------------------------------------------+-------+------------------------------------+---------+-------+---------+----------| 
     | clk2                                       |   ^   | clk2                               |         |       |   0.041 |    0.606 | 
     | clk2__L1_I0/A                              |   ^   | clk2                               | INVX8   | 0.001 |   0.042 |    0.607 | 
     | clk2__L1_I0/Y                              |   v   | clk2__L1_N0                        | INVX8   | 0.021 |   0.063 |    0.628 | 
     | clk2__L2_I0/A                              |   v   | clk2__L1_N0                        | INVX4   | 0.000 |   0.063 |    0.629 | 
     | clk2__L2_I0/Y                              |   ^   | clk2__L2_N0                        | INVX4   | 0.020 |   0.084 |    0.649 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/CLK |   ^   | clk2__L2_N0                        | DFFSR   | 0.000 |   0.084 |    0.649 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/Q   |   ^   | talker_str_1xfsm_unitxstate_regx0x | DFFSR   | 0.111 |   0.195 |    0.760 | 
     | U12/A                                      |   ^   | talker_str_1xfsm_unitxstate_regx0x | BUFX2   | 0.000 |   0.195 |    0.760 | 
     | U12/Y                                      |   ^   | n11                                | BUFX2   | 0.051 |   0.246 |    0.811 | 
     | talker_str_1xfsm_unitxU11/A                |   ^   | n11                                | AOI22X1 | 0.000 |   0.246 |    0.811 | 
     | talker_str_1xfsm_unitxU11/Y                |   v   | talker_str_1xfsm_unitxn9           | AOI22X1 | 0.037 |   0.283 |    0.848 | 
     | U9/A                                       |   v   | talker_str_1xfsm_unitxn9           | BUFX2   | 0.000 |   0.283 |    0.848 | 
     | U9/Y                                       |   v   | n8                                 | BUFX2   | 0.061 |   0.345 |    0.910 | 
     | U1/B                                       |   v   | n8                                 | OR2X2   | 0.000 |   0.345 |    0.910 | 
     | U1/Y                                       |   v   | n6                                 | OR2X2   | 0.050 |   0.395 |    0.960 | 
     | U8/A                                       |   v   | n6                                 | INVX1   | 0.000 |   0.395 |    0.960 | 
     | U8/Y                                       |   ^   | n7                                 | INVX1   | 0.008 |   0.403 |    0.968 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D   |   ^   | n7                                 | DFFSR   | 0.000 |   0.403 |    0.968 | 
     +--------------------------------------------------------------------------------------------------------------------------------+ 
Path 4: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (v) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xfsm_unitxstate_reg_regx0x/Q (^) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.033
+ Phase Shift                   1.000
= Required Time                 1.051
- Arrival Time                  0.399
= Slack Time                    0.653
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +--------------------------------------------------------------------------------------------------------------------------------+ 
     |                    Pin                     |  Edge |                Net                 |  Cell   | Delay | Arrival | Required | 
     |                                            |       |                                    |         |       |  Time   |   Time   | 
     |--------------------------------------------+-------+------------------------------------+---------+-------+---------+----------| 
     | clk2                                       |   ^   | clk2                               |         |       |   0.041 |    0.694 | 
     | clk2__L1_I0/A                              |   ^   | clk2                               | INVX8   | 0.001 |   0.042 |    0.695 | 
     | clk2__L1_I0/Y                              |   v   | clk2__L1_N0                        | INVX8   | 0.021 |   0.063 |    0.716 | 
     | clk2__L2_I0/A                              |   v   | clk2__L1_N0                        | INVX4   | 0.000 |   0.064 |    0.716 | 
     | clk2__L2_I0/Y                              |   ^   | clk2__L2_N0                        | INVX4   | 0.020 |   0.084 |    0.737 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/CLK |   ^   | clk2__L2_N0                        | DFFSR   | 0.000 |   0.084 |    0.737 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/Q   |   ^   | talker_str_1xfsm_unitxstate_regx0x | DFFSR   | 0.111 |   0.195 |    0.847 | 
     | U12/A                                      |   ^   | talker_str_1xfsm_unitxstate_regx0x | BUFX2   | 0.000 |   0.195 |    0.847 | 
     | U12/Y                                      |   ^   | n11                                | BUFX2   | 0.051 |   0.246 |    0.898 | 
     | U14/A                                      |   ^   | n11                                | INVX1   | 0.000 |   0.246 |    0.899 | 
     | U14/Y                                      |   v   | talker_str_1xfsm_unitxn6           | INVX1   | 0.024 |   0.270 |    0.923 | 
     | talker_str_1xfsm_unitxU11/D                |   v   | talker_str_1xfsm_unitxn6           | AOI22X1 | 0.000 |   0.271 |    0.923 | 
     | talker_str_1xfsm_unitxU11/Y                |   ^   | talker_str_1xfsm_unitxn9           | AOI22X1 | 0.027 |   0.297 |    0.950 | 
     | U9/A                                       |   ^   | talker_str_1xfsm_unitxn9           | BUFX2   | 0.000 |   0.297 |    0.950 | 
     | U9/Y                                       |   ^   | n8                                 | BUFX2   | 0.037 |   0.334 |    0.987 | 
     | U1/B                                       |   ^   | n8                                 | OR2X2   | 0.000 |   0.334 |    0.987 | 
     | U1/Y                                       |   ^   | n6                                 | OR2X2   | 0.044 |   0.378 |    1.031 | 
     | U8/A                                       |   ^   | n6                                 | INVX1   | 0.000 |   0.378 |    1.031 | 
     | U8/Y                                       |   v   | n7                                 | INVX1   | 0.021 |   0.399 |    1.051 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D   |   v   | n7                                 | DFFSR   | 0.000 |   0.399 |    1.051 | 
     +--------------------------------------------------------------------------------------------------------------------------------+ 
Path 5: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (v) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xsync_unitxsync_reg_reg/Q    (^) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.033
+ Phase Shift                   1.000
= Required Time                 1.051
- Arrival Time                  0.397
= Slack Time                    0.654
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +--------------------------------------------------------------------------------------------------------------------+ 
     |                   Pin                    |  Edge |           Net            |  Cell   | Delay | Arrival | Required | 
     |                                          |       |                          |         |       |  Time   |   Time   | 
     |------------------------------------------+-------+--------------------------+---------+-------+---------+----------| 
     | clk2                                     |   ^   | clk2                     |         |       |   0.041 |    0.696 | 
     | clk2__L1_I0/A                            |   ^   | clk2                     | INVX8   | 0.001 |   0.042 |    0.696 | 
     | clk2__L1_I0/Y                            |   v   | clk2__L1_N0              | INVX8   | 0.021 |   0.063 |    0.718 | 
     | clk2__L2_I0/A                            |   v   | clk2__L1_N0              | INVX4   | 0.000 |   0.063 |    0.718 | 
     | clk2__L2_I0/Y                            |   ^   | clk2__L2_N0              | INVX4   | 0.020 |   0.084 |    0.738 | 
     | talker_str_1xsync_unitxsync_reg_reg/CLK  |   ^   | clk2__L2_N0              | DFFSR   | 0.000 |   0.084 |    0.738 | 
     | talker_str_1xsync_unitxsync_reg_reg/Q    |   ^   | n14                      | DFFSR   | 0.112 |   0.196 |    0.850 | 
     | U10/A                                    |   ^   | n14                      | BUFX2   | 0.000 |   0.196 |    0.850 | 
     | U10/Y                                    |   ^   | rcv                      | BUFX2   | 0.040 |   0.237 |    0.891 | 
     | U13/A                                    |   ^   | rcv                      | INVX1   | 0.000 |   0.237 |    0.891 | 
     | U13/Y                                    |   v   | talker_str_1xfsm_unitxn7 | INVX1   | 0.020 |   0.256 |    0.911 | 
     | talker_str_1xfsm_unitxU11/B              |   v   | talker_str_1xfsm_unitxn7 | AOI22X1 | 0.000 |   0.256 |    0.911 | 
     | talker_str_1xfsm_unitxU11/Y              |   ^   | talker_str_1xfsm_unitxn9 | AOI22X1 | 0.039 |   0.296 |    0.950 | 
     | U9/A                                     |   ^   | talker_str_1xfsm_unitxn9 | BUFX2   | 0.000 |   0.296 |    0.950 | 
     | U9/Y                                     |   ^   | n8                       | BUFX2   | 0.037 |   0.332 |    0.987 | 
     | U1/B                                     |   ^   | n8                       | OR2X2   | 0.000 |   0.333 |    0.987 | 
     | U1/Y                                     |   ^   | n6                       | OR2X2   | 0.044 |   0.376 |    1.031 | 
     | U8/A                                     |   ^   | n6                       | INVX1   | 0.000 |   0.376 |    1.031 | 
     | U8/Y                                     |   v   | n7                       | INVX1   | 0.021 |   0.397 |    1.051 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D |   v   | n7                       | DFFSR   | 0.000 |   0.397 |    1.051 | 
     +--------------------------------------------------------------------------------------------------------------------+ 
Path 6: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (v) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xfsm_unitxstate_reg_regx0x/Q (v) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.033
+ Phase Shift                   1.000
= Required Time                 1.051
- Arrival Time                  0.395
= Slack Time                    0.656
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +--------------------------------------------------------------------------------------------------------------------------------+ 
     |                    Pin                     |  Edge |                Net                 |  Cell   | Delay | Arrival | Required | 
     |                                            |       |                                    |         |       |  Time   |   Time   | 
     |--------------------------------------------+-------+------------------------------------+---------+-------+---------+----------| 
     | clk2                                       |   ^   | clk2                               |         |       |   0.041 |    0.698 | 
     | clk2__L1_I0/A                              |   ^   | clk2                               | INVX8   | 0.001 |   0.042 |    0.699 | 
     | clk2__L1_I0/Y                              |   v   | clk2__L1_N0                        | INVX8   | 0.021 |   0.063 |    0.720 | 
     | clk2__L2_I0/A                              |   v   | clk2__L1_N0                        | INVX4   | 0.000 |   0.064 |    0.720 | 
     | clk2__L2_I0/Y                              |   ^   | clk2__L2_N0                        | INVX4   | 0.020 |   0.084 |    0.740 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/CLK |   ^   | clk2__L2_N0                        | DFFSR   | 0.000 |   0.084 |    0.741 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/Q   |   v   | talker_str_1xfsm_unitxstate_regx0x | DFFSR   | 0.116 |   0.200 |    0.856 | 
     | U12/A                                      |   v   | talker_str_1xfsm_unitxstate_regx0x | BUFX2   | 0.000 |   0.200 |    0.856 | 
     | U12/Y                                      |   v   | n11                                | BUFX2   | 0.045 |   0.245 |    0.901 | 
     | talker_str_1xfsm_unitxU11/A                |   v   | n11                                | AOI22X1 | 0.000 |   0.245 |    0.902 | 
     | talker_str_1xfsm_unitxU11/Y                |   ^   | talker_str_1xfsm_unitxn9           | AOI22X1 | 0.048 |   0.294 |    0.950 | 
     | U9/A                                       |   ^   | talker_str_1xfsm_unitxn9           | BUFX2   | 0.000 |   0.294 |    0.950 | 
     | U9/Y                                       |   ^   | n8                                 | BUFX2   | 0.037 |   0.330 |    0.987 | 
     | U1/B                                       |   ^   | n8                                 | OR2X2   | 0.000 |   0.330 |    0.987 | 
     | U1/Y                                       |   ^   | n6                                 | OR2X2   | 0.044 |   0.374 |    1.031 | 
     | U8/A                                       |   ^   | n6                                 | INVX1   | 0.000 |   0.374 |    1.031 | 
     | U8/Y                                       |   v   | n7                                 | INVX1   | 0.021 |   0.395 |    1.051 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D   |   v   | n7                                 | DFFSR   | 0.000 |   0.395 |    1.051 | 
     +--------------------------------------------------------------------------------------------------------------------------------+ 
Path 7: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (^) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xfsm_unitxstate_reg_regx1x/Q (v) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.116
+ Phase Shift                   1.000
= Required Time                 0.968
- Arrival Time                  0.287
= Slack Time                    0.681
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +------------------------------------------------------------------------------------------------------------------------------+ 
     |                    Pin                     |  Edge |                Net                 |  Cell | Delay | Arrival | Required | 
     |                                            |       |                                    |       |       |  Time   |   Time   | 
     |--------------------------------------------+-------+------------------------------------+-------+-------+---------+----------| 
     | clk2                                       |   ^   | clk2                               |       |       |   0.041 |    0.723 | 
     | clk2__L1_I0/A                              |   ^   | clk2                               | INVX8 | 0.001 |   0.042 |    0.723 | 
     | clk2__L1_I0/Y                              |   v   | clk2__L1_N0                        | INVX8 | 0.021 |   0.063 |    0.744 | 
     | clk2__L2_I0/A                              |   v   | clk2__L1_N0                        | INVX4 | 0.000 |   0.063 |    0.745 | 
     | clk2__L2_I0/Y                              |   ^   | clk2__L2_N0                        | INVX4 | 0.020 |   0.084 |    0.765 | 
     | talker_str_1xfsm_unitxstate_reg_regx1x/CLK |   ^   | clk2__L2_N0                        | DFFSR | 0.000 |   0.084 |    0.765 | 
     | talker_str_1xfsm_unitxstate_reg_regx1x/Q   |   v   | talker_str_1xfsm_unitxstate_regx1x | DFFSR | 0.116 |   0.201 |    0.882 | 
     | U11/A                                      |   v   | talker_str_1xfsm_unitxstate_regx1x | BUFX2 | 0.000 |   0.201 |    0.882 | 
     | U11/Y                                      |   v   | n10                                | BUFX2 | 0.040 |   0.240 |    0.922 | 
     | U1/A                                       |   v   | n10                                | OR2X2 | 0.000 |   0.241 |    0.922 | 
     | U1/Y                                       |   v   | n6                                 | OR2X2 | 0.038 |   0.278 |    0.960 | 
     | U8/A                                       |   v   | n6                                 | INVX1 | 0.000 |   0.279 |    0.960 | 
     | U8/Y                                       |   ^   | n7                                 | INVX1 | 0.008 |   0.287 |    0.968 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D   |   ^   | n7                                 | DFFSR | 0.000 |   0.287 |    0.968 | 
     +------------------------------------------------------------------------------------------------------------------------------+ 
Path 8: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (^) checked with  leading 
edge of 'clk2'
Beginpoint: start                                    (^) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.116
+ Phase Shift                   1.000
= Required Time                 0.968
- Arrival Time                  0.255
= Slack Time                    0.713
     Clock Rise Edge                      0.000
     + Input Delay                        0.100
     + Drive Adjustment                   0.018
     = Beginpoint Arrival Time            0.118
     +--------------------------------------------------------------------------------------------------------------------+ 
     |                   Pin                    |  Edge |           Net            |  Cell   | Delay | Arrival | Required | 
     |                                          |       |                          |         |       |  Time   |   Time   | 
     |------------------------------------------+-------+--------------------------+---------+-------+---------+----------| 
     | start                                    |   ^   | start                    |         |       |   0.118 |    0.831 | 
     | talker_str_1xfsm_unitxU11/C              |   ^   | start                    | AOI22X1 | 0.000 |   0.119 |    0.832 | 
     | talker_str_1xfsm_unitxU11/Y              |   v   | talker_str_1xfsm_unitxn9 | AOI22X1 | 0.017 |   0.136 |    0.848 | 
     | U9/A                                     |   v   | talker_str_1xfsm_unitxn9 | BUFX2   | 0.000 |   0.136 |    0.848 | 
     | U9/Y                                     |   v   | n8                       | BUFX2   | 0.061 |   0.197 |    0.910 | 
     | U1/B                                     |   v   | n8                       | OR2X2   | 0.000 |   0.197 |    0.910 | 
     | U1/Y                                     |   v   | n6                       | OR2X2   | 0.050 |   0.247 |    0.960 | 
     | U8/A                                     |   v   | n6                       | INVX1   | 0.000 |   0.247 |    0.960 | 
     | U8/Y                                     |   ^   | n7                       | INVX1   | 0.008 |   0.255 |    0.968 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D |   ^   | n7                       | DFFSR   | 0.000 |   0.255 |    0.968 | 
     +--------------------------------------------------------------------------------------------------------------------+ 
Path 9: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (v) checked with  leading 
edge of 'clk2'
Beginpoint: talker_str_1xfsm_unitxstate_reg_regx1x/Q (^) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.033
+ Phase Shift                   1.000
= Required Time                 1.051
- Arrival Time                  0.298
= Slack Time                    0.753
     Clock Rise Edge                      0.000
     + Drive Adjustment                   0.041
     = Beginpoint Arrival Time            0.041
     +------------------------------------------------------------------------------------------------------------------------------+ 
     |                    Pin                     |  Edge |                Net                 |  Cell | Delay | Arrival | Required | 
     |                                            |       |                                    |       |       |  Time   |   Time   | 
     |--------------------------------------------+-------+------------------------------------+-------+-------+---------+----------| 
     | clk2                                       |   ^   | clk2                               |       |       |   0.041 |    0.795 | 
     | clk2__L1_I0/A                              |   ^   | clk2                               | INVX8 | 0.001 |   0.042 |    0.795 | 
     | clk2__L1_I0/Y                              |   v   | clk2__L1_N0                        | INVX8 | 0.021 |   0.063 |    0.817 | 
     | clk2__L2_I0/A                              |   v   | clk2__L1_N0                        | INVX4 | 0.000 |   0.063 |    0.817 | 
     | clk2__L2_I0/Y                              |   ^   | clk2__L2_N0                        | INVX4 | 0.020 |   0.084 |    0.837 | 
     | talker_str_1xfsm_unitxstate_reg_regx1x/CLK |   ^   | clk2__L2_N0                        | DFFSR | 0.000 |   0.084 |    0.837 | 
     | talker_str_1xfsm_unitxstate_reg_regx1x/Q   |   ^   | talker_str_1xfsm_unitxstate_regx1x | DFFSR | 0.112 |   0.196 |    0.949 | 
     | U11/A                                      |   ^   | talker_str_1xfsm_unitxstate_regx1x | BUFX2 | 0.000 |   0.196 |    0.949 | 
     | U11/Y                                      |   ^   | n10                                | BUFX2 | 0.043 |   0.239 |    0.992 | 
     | U1/A                                       |   ^   | n10                                | OR2X2 | 0.000 |   0.239 |    0.992 | 
     | U1/Y                                       |   ^   | n6                                 | OR2X2 | 0.038 |   0.277 |    1.031 | 
     | U8/A                                       |   ^   | n6                                 | INVX1 | 0.000 |   0.277 |    1.031 | 
     | U8/Y                                       |   v   | n7                                 | INVX1 | 0.021 |   0.298 |    1.051 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D   |   v   | n7                                 | DFFSR | 0.000 |   0.298 |    1.051 | 
     +------------------------------------------------------------------------------------------------------------------------------+ 
Path 10: MET Setup Check with Pin talker_str_1xfsm_unitxstate_reg_regx0x/CLK 
Endpoint:   talker_str_1xfsm_unitxstate_reg_regx0x/D (v) checked with  leading 
edge of 'clk2'
Beginpoint: start                                    (v) triggered by  leading 
edge of 'clk2'
Other End Arrival Time          0.084
- Setup                         0.033
+ Phase Shift                   1.000
= Required Time                 1.051
- Arrival Time                  0.248
= Slack Time                    0.803
     Clock Rise Edge                      0.000
     + Input Delay                        0.100
     + Drive Adjustment                   0.012
     = Beginpoint Arrival Time            0.112
     +--------------------------------------------------------------------------------------------------------------------+ 
     |                   Pin                    |  Edge |           Net            |  Cell   | Delay | Arrival | Required | 
     |                                          |       |                          |         |       |  Time   |   Time   | 
     |------------------------------------------+-------+--------------------------+---------+-------+---------+----------| 
     | start                                    |   v   | start                    |         |       |   0.112 |    0.915 | 
     | talker_str_1xfsm_unitxU11/C              |   v   | start                    | AOI22X1 | 0.000 |   0.112 |    0.915 | 
     | talker_str_1xfsm_unitxU11/Y              |   ^   | talker_str_1xfsm_unitxn9 | AOI22X1 | 0.035 |   0.147 |    0.950 | 
     | U9/A                                     |   ^   | talker_str_1xfsm_unitxn9 | BUFX2   | 0.000 |   0.147 |    0.950 | 
     | U9/Y                                     |   ^   | n8                       | BUFX2   | 0.037 |   0.183 |    0.987 | 
     | U1/B                                     |   ^   | n8                       | OR2X2   | 0.000 |   0.183 |    0.987 | 
     | U1/Y                                     |   ^   | n6                       | OR2X2   | 0.044 |   0.227 |    1.031 | 
     | U8/A                                     |   ^   | n6                       | INVX1   | 0.000 |   0.227 |    1.031 | 
     | U8/Y                                     |   v   | n7                       | INVX1   | 0.021 |   0.248 |    1.051 | 
     | talker_str_1xfsm_unitxstate_reg_regx0x/D |   v   | n7                       | DFFSR   | 0.000 |   0.248 |    1.051 | 
     +--------------------------------------------------------------------------------------------------------------------+ 

