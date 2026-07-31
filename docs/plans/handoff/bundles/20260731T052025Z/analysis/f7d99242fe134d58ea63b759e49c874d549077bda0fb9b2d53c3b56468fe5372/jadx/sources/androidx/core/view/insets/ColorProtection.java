package androidx.core.view.insets;

import androidx.core.graphics.Insets;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
