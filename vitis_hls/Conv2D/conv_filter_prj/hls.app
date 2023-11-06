<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="Filter2DKernel" name="conv_filter_prj">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../filter2d_hw_tb.cpp" sc="0" tb="1" cflags=" -I../.. -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="./filter2d_hw.cpp" sc="0" tb="false" cflags="-I./." csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

