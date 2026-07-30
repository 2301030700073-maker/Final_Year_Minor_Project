package androidx.compose.ui.text.android;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: TextLayout.android.kt */
/* loaded from: classes.dex */
public abstract class VerticalPaddings {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2151constructorimpl(long j) {
        return j;
    }

    /* renamed from: getBottomPadding-impl, reason: not valid java name */
    public static final int m2152getBottomPaddingimpl(long j) {
        return (int) (j & BodyPartID.bodyIdMax);
    }

    /* renamed from: getTopPadding-impl, reason: not valid java name */
    public static final int m2153getTopPaddingimpl(long j) {
        return (int) (j >> 32);
    }
}
