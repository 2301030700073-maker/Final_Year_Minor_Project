package b.m.b;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class w0 {
    public static final List FULLUPDATE_PAYLOADS = Collections.emptyList();
    public final View itemView;
    public Q mBindingAdapter;
    public int mFlags;
    public WeakReference mNestedRecyclerView;
    public RecyclerView mOwnerRecyclerView;
    public int mPosition = -1;
    public int mOldPosition = -1;
    public long mItemId = -1;
    public int mItemViewType = -1;
    public int mPreLayoutPosition = -1;
    public w0 mShadowedHolder = null;
    public w0 mShadowingHolder = null;
    public List mPayloads = null;
    public List mUnmodifiedPayloads = null;
    public int mIsRecyclableCount = 0;
    public n0 mScrapContainer = null;
    public boolean mInChangeScrap = false;
    public int mWasImportantForAccessibilityBeforeHidden = 0;
    public int mPendingAccessibilityState = -1;

    public w0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.itemView = view;
    }

    public void addChangePayload(Object obj) {
        if (obj == null) {
            addFlags(1024);
            return;
        }
        if ((1024 & this.mFlags) == 0) {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
            this.mPayloads.add(obj);
        }
    }

    public void addFlags(int i) {
        this.mFlags = i | this.mFlags;
    }

    public void clearOldPosition() {
        this.mOldPosition = -1;
        this.mPreLayoutPosition = -1;
    }

    public void clearReturnedFromScrapFlag() {
        this.mFlags &= -33;
    }

    public final int getAbsoluteAdapterPosition() {
        RecyclerView recyclerView = this.mOwnerRecyclerView;
        if (recyclerView == null) {
            return -1;
        }
        return recyclerView.getAdapterPositionInRecyclerView(this);
    }

    public final int getLayoutPosition() {
        int i = this.mPreLayoutPosition;
        return i == -1 ? this.mPosition : i;
    }

    public List getUnmodifiedPayloads() {
        if ((this.mFlags & 1024) != 0) {
            return FULLUPDATE_PAYLOADS;
        }
        List list = this.mPayloads;
        return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
    }

    public boolean hasAnyOfTheFlags(int i) {
        return (this.mFlags & i) != 0;
    }

    public boolean isAttachedToTransitionOverlay() {
        return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
    }

    public boolean isBound() {
        return (this.mFlags & 1) != 0;
    }

    public boolean isInvalid() {
        return (this.mFlags & 4) != 0;
    }

    public final boolean isRecyclable() {
        return (this.mFlags & 16) == 0 && !b.e.i.q.r(this.itemView);
    }

    public boolean isRemoved() {
        return (this.mFlags & 8) != 0;
    }

    public boolean isScrap() {
        return this.mScrapContainer != null;
    }

    public boolean isTmpDetached() {
        return (this.mFlags & 256) != 0;
    }

    public boolean isUpdated() {
        return (this.mFlags & 2) != 0;
    }

    public void offsetPosition(int i, boolean z) {
        if (this.mOldPosition == -1) {
            this.mOldPosition = this.mPosition;
        }
        if (this.mPreLayoutPosition == -1) {
            this.mPreLayoutPosition = this.mPosition;
        }
        if (z) {
            this.mPreLayoutPosition += i;
        }
        this.mPosition += i;
        if (this.itemView.getLayoutParams() != null) {
            ((C0178g0) this.itemView.getLayoutParams()).f1155c = true;
        }
    }

    public void resetInternal() {
        this.mFlags = 0;
        this.mPosition = -1;
        this.mOldPosition = -1;
        this.mItemId = -1L;
        this.mPreLayoutPosition = -1;
        this.mIsRecyclableCount = 0;
        this.mShadowedHolder = null;
        this.mShadowingHolder = null;
        List list = this.mPayloads;
        if (list != null) {
            list.clear();
        }
        this.mFlags &= -1025;
        this.mWasImportantForAccessibilityBeforeHidden = 0;
        this.mPendingAccessibilityState = -1;
        RecyclerView.clearNestedRecyclerViewIfNotNested(this);
    }

    public void setFlags(int i, int i2) {
        this.mFlags = (i & i2) | (this.mFlags & (~i2));
    }

    public final void setIsRecyclable(boolean z) {
        int i = this.mIsRecyclableCount;
        int i2 = z ? i - 1 : i + 1;
        this.mIsRecyclableCount = i2;
        if (i2 < 0) {
            this.mIsRecyclableCount = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            return;
        }
        if (!z && i2 == 1) {
            this.mFlags |= 16;
        } else if (z && this.mIsRecyclableCount == 0) {
            this.mFlags &= -17;
        }
    }

    public boolean shouldIgnore() {
        return (this.mFlags & 128) != 0;
    }

    public String toString() {
        StringBuilder g = c.a.c.a.a.g(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        g.append(Integer.toHexString(hashCode()));
        g.append(" position=");
        g.append(this.mPosition);
        g.append(" id=");
        g.append(this.mItemId);
        g.append(", oldPos=");
        g.append(this.mOldPosition);
        g.append(", pLpos:");
        g.append(this.mPreLayoutPosition);
        StringBuilder sb = new StringBuilder(g.toString());
        if (isScrap()) {
            sb.append(" scrap ");
            sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
        }
        if (isInvalid()) {
            sb.append(" invalid");
        }
        if (!isBound()) {
            sb.append(" unbound");
        }
        boolean z = true;
        if ((this.mFlags & 2) != 0) {
            sb.append(" update");
        }
        if (isRemoved()) {
            sb.append(" removed");
        }
        if (shouldIgnore()) {
            sb.append(" ignored");
        }
        if (isTmpDetached()) {
            sb.append(" tmpDetached");
        }
        if (!isRecyclable()) {
            StringBuilder f = c.a.c.a.a.f(" not recyclable(");
            f.append(this.mIsRecyclableCount);
            f.append(")");
            sb.append(f.toString());
        }
        if ((this.mFlags & 512) == 0 && !isInvalid()) {
            z = false;
        }
        if (z) {
            sb.append(" undefined adapter position");
        }
        if (this.itemView.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }

    public boolean wasReturnedFromScrap() {
        return (this.mFlags & 32) != 0;
    }
}
