package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system;

import java.io.File;

/* loaded from: classes.dex */
public class DefaultFileManager {

    /* renamed from: do, reason: not valid java name */
    public final File f8838do;

    public DefaultFileManager(File file) {
        this.f8838do = file;
    }

    /* renamed from: do, reason: not valid java name */
    public final File m5072do(String str) {
        File file = new File(this.f8838do, str);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m5073for(File file) {
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public final File m5074if(File file) {
        if (file.exists() || file.createNewFile()) {
            return file;
        }
        return null;
    }
}
