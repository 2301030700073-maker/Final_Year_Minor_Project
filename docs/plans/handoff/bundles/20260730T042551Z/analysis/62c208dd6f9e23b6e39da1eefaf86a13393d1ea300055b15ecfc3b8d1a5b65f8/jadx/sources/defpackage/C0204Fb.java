package defpackage;

import java.io.File;
import java.io.FilenameFilter;
import java.nio.charset.Charset;

/* renamed from: Fb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0204Fb implements FilenameFilter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1073do;

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        switch (this.f1073do) {
            case 0:
                return str.startsWith(".ae");
            default:
                Charset charset = C0643Zb.f4873do;
                return str.startsWith("event");
        }
    }
}
