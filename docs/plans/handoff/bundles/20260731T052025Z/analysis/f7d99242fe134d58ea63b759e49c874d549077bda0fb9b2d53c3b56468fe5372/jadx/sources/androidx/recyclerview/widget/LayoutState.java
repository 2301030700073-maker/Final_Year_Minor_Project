package androidx.recyclerview.widget;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutState {
    public int mAvailable;
    public int mCurrentPosition;
    public int mEndLine;
    public boolean mInfinite;
    public int mItemDirection;
    public int mLayoutDirection;
    public boolean mRecycle;
    public int mStartLine;
    public boolean mStopInFocusable;

    public final String toString() {
        StringBuilder sb = new StringBuilder("LayoutState{mAvailable=");
        sb.append(this.mAvailable);
        sb.append(", mCurrentPosition=");
        sb.append(this.mCurrentPosition);
        sb.append(", mItemDirection=");
        sb.append(this.mItemDirection);
        sb.append(", mLayoutDirection=");
        sb.append(this.mLayoutDirection);
        sb.append(", mStartLine=");
        sb.append(this.mStartLine);
        sb.append(", mEndLine=");
        return CameraDevices$CC.m(sb, this.mEndLine, '}');
    }
}
