package androidx.core.view.insets;

import androidx.core.graphics.Insets;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ColorProtection {
    public int mColor;
    public ProtectionGroup mController;
    public boolean mHasColor;
    public Insets mInsets;
    public Insets mInsetsIgnoringVisibility;

    public abstract void setSystemAlpha(float f);

    public abstract void setSystemInsetAmount(float f);
}
