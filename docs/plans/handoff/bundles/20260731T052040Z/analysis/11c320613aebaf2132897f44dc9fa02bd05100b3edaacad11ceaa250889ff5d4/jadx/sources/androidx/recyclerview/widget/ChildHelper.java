package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.internal.http1.HeadersReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChildHelper {
    public final /* synthetic */ int $r8$classId;
    public final Object mBucket;
    public final Object mCallback;
    public final Serializable mHiddenViews;
    public int mRemoveStatus;
    public Object mViewInRemoveView;

    public ChildHelper(RecyclerView.AnonymousClass7 anonymousClass7) {
        this.$r8$classId = 0;
        this.mRemoveStatus = 0;
        this.mCallback = anonymousClass7;
        this.mBucket = new HeadersReader();
        this.mHiddenViews = new ArrayList();
    }

    public void addView(View view, int i, boolean z) {
        RecyclerView recyclerView = RecyclerView.this;
        int childCount = i < 0 ? recyclerView.getChildCount() : getOffset(i);
        ((HeadersReader) this.mBucket).insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        recyclerView.addView(view, childCount);
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewAttachedToWindow(childViewHolderInt);
        }
        ArrayList arrayList = recyclerView.mOnChildAttachStateListeners;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((ItemTouchHelper) recyclerView.mOnChildAttachStateListeners.get(size)).getClass();
            }
        }
    }

    public void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        RecyclerView recyclerView = RecyclerView.this;
        int childCount = i < 0 ? recyclerView.getChildCount() : getOffset(i);
        ((HeadersReader) this.mBucket).insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(recyclerView.exceptionLabel(), sb);
                return;
            } else {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "reAttach " + childViewHolderInt);
                }
                childViewHolderInt.clearTmpDetachFlag();
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            String exceptionLabel = recyclerView.exceptionLabel();
            sb2.append(", index: ");
            sb2.append(childCount);
            sb2.append(exceptionLabel);
            throw new IllegalArgumentException(sb2.toString());
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public void detachViewFromParent(int i) {
        int offset = getOffset(i);
        ((HeadersReader) this.mBucket).remove(offset);
        RecyclerView recyclerView = RecyclerView.this;
        View childAt = recyclerView.getChildAt(offset);
        if (childAt != null) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(recyclerView.exceptionLabel(), sb);
                    return;
                } else {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "tmpDetach " + childViewHolderInt);
                    }
                    childViewHolderInt.addFlags(256);
                }
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            throw new IllegalArgumentException("No view at offset " + offset + recyclerView.exceptionLabel());
        }
        recyclerView.detachViewFromParent(offset);
    }

    public View getChildAt(int i) {
        return RecyclerView.this.getChildAt(getOffset(i));
    }

    public int getChildCount() {
        return RecyclerView.this.getChildCount() - ((ArrayList) this.mHiddenViews).size();
    }

    public String getHeader(String str) {
        for (Map.Entry entry : ((Map) this.mBucket).entrySet()) {
            String str2 = (String) entry.getKey();
            if (str2 != null && str2.equalsIgnoreCase(str) && !((List) entry.getValue()).isEmpty()) {
                return (String) ((List) entry.getValue()).get(0);
            }
        }
        return null;
    }

    public int getOffset(int i) {
        HeadersReader headersReader = (HeadersReader) this.mBucket;
        if (i < 0) {
            return -1;
        }
        int childCount = RecyclerView.this.getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            int countOnesBefore = i - (i2 - headersReader.countOnesBefore(i2));
            if (countOnesBefore == 0) {
                while (headersReader.get(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += countOnesBefore;
        }
        return -1;
    }

    public View getUnfilteredChildAt(int i) {
        return RecyclerView.this.getChildAt(i);
    }

    public int getUnfilteredChildCount() {
        return RecyclerView.this.getChildCount();
    }

    public void hideViewInternal(View view) {
        ((ArrayList) this.mHiddenViews).add(view);
        RecyclerView.AnonymousClass7 anonymousClass7 = (RecyclerView.AnonymousClass7) this.mCallback;
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return ((HeadersReader) this.mBucket).toString() + ", hidden list:" + ((ArrayList) this.mHiddenViews).size();
            default:
                return super.toString();
        }
    }

    public void unhideViewInternal(View view) {
        if (((ArrayList) this.mHiddenViews).remove(view)) {
            RecyclerView.AnonymousClass7 anonymousClass7 = (RecyclerView.AnonymousClass7) this.mCallback;
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        }
    }

    public ChildHelper(int i, String str, TreeMap treeMap, String str2, String str3) {
        this.$r8$classId = 1;
        this.mRemoveStatus = i;
        this.mCallback = str;
        this.mBucket = treeMap;
        this.mHiddenViews = str2 == null ? "" : str2;
        this.mViewInRemoveView = str3;
    }
}
