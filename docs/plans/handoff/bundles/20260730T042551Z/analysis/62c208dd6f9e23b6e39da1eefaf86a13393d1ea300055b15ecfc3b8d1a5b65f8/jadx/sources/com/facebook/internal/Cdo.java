package com.facebook.internal;

import com.facebook.internal.FileLruCache;
import java.io.File;
import java.io.FilenameFilter;

/* renamed from: com.facebook.internal.do, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Cdo implements FilenameFilter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f9299do;

    public /* synthetic */ Cdo(int i) {
        this.f9299do = i;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean m5438refreshBestGuessNumberOfCPUCores$lambda4;
        boolean m5424filterExcludeBufferFiles$lambda0;
        switch (this.f9299do) {
            case 0:
                m5424filterExcludeBufferFiles$lambda0 = FileLruCache.BufferFile.m5424filterExcludeBufferFiles$lambda0(file, str);
                return m5424filterExcludeBufferFiles$lambda0;
            default:
                m5438refreshBestGuessNumberOfCPUCores$lambda4 = Utility.m5438refreshBestGuessNumberOfCPUCores$lambda4(file, str);
                return m5438refreshBestGuessNumberOfCPUCores$lambda4;
        }
    }
}
