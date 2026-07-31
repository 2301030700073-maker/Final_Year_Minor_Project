package androidx.core.provider;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FontsContractCompat$FontFamilyResult {
    public final List mFonts;
    public final int mStatusCode;

    public FontsContractCompat$FontFamilyResult() {
        this.mStatusCode = 1;
        this.mFonts = Collections.singletonList(null);
    }

    public FontsContractCompat$FontFamilyResult(int i, List list) {
        this.mStatusCode = i;
        this.mFonts = list;
    }

    public FontsContractCompat$FontFamilyResult(ArrayList arrayList) {
        this.mStatusCode = 0;
        this.mFonts = arrayList;
    }
}
