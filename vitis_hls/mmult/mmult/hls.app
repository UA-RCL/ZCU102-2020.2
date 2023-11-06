<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="HLS_accel" name="mmult">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../matrix_multiply_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="matrix_multiply_axiwrapper.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="matrix_multiply.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="matrix_multiply.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

