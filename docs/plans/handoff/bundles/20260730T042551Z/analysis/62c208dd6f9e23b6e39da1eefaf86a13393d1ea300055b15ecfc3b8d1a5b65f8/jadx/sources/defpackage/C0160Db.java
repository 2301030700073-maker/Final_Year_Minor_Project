package defpackage;

import java.io.File;
import java.io.FilenameFilter;

/* renamed from: Db, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0160Db {

    /* renamed from: do, reason: not valid java name */
    public static final C0138Cb f627do = new FilenameFilter() { // from class: Cb
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.startsWith("aqs.");
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f628do = new Cdo(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0495Sh f629do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f630do = null;

    /* renamed from: if, reason: not valid java name */
    public String f631if = null;

    public C0160Db(C0495Sh c0495Sh) {
        this.f629do = c0495Sh;
    }
}
