package androidx.core.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RemoteViews;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1;
import androidx.core.widget.RemoteViewsCompat$RemoteCollectionItems;
import androidx.lifecycle.LiveData$1;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RemoteViewsCompat$RemoteCollectionItems {
    public final /* synthetic */ int $r8$classId;
    public boolean mHasStableIds;
    public final Object mIds;
    public int mViewTypeCount;
    public final Object mViews;

    public RemoteViewsCompat$RemoteCollectionItems(long[] jArr, RemoteViews[] remoteViewsArr) {
        this.$r8$classId = 0;
        this.mIds = jArr;
        this.mViews = remoteViewsArr;
        this.mHasStableIds = false;
        this.mViewTypeCount = 1;
        if (jArr.length != remoteViewsArr.length) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("RemoteCollectionItems has different number of ids and views");
            throw null;
        }
        ArrayList arrayList = new ArrayList(remoteViewsArr.length);
        for (RemoteViews remoteViews : remoteViewsArr) {
            arrayList.add(Integer.valueOf(remoteViews.getLayoutId()));
        }
        int size = CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList)).size();
        if (size <= 1) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(size, "View type count is set to 1, but the collection contains ", " different layout ids"));
        throw null;
    }

    public void continueSettlingToState(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.mIds;
        Object obj2 = this.mViews;
        switch (i2) {
            case 2:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) obj2;
                WeakReference weakReference = bottomSheetBehavior.viewRef;
                if (weakReference != null && weakReference.get() != null) {
                    this.mViewTypeCount = i;
                    if (!this.mHasStableIds) {
                        ((View) bottomSheetBehavior.viewRef.get()).postOnAnimation((LiveData$1) obj);
                        this.mHasStableIds = true;
                        break;
                    }
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj2;
                WeakReference weakReference2 = sideSheetBehavior.viewRef;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.mViewTypeCount = i;
                    if (!this.mHasStableIds) {
                        ((View) sideSheetBehavior.viewRef.get()).postOnAnimation((Task$$ExternalSyntheticLambda0) obj);
                        this.mHasStableIds = true;
                        break;
                    }
                }
                break;
        }
    }

    public RemoteViewsCompat$RemoteCollectionItems(Parcel parcel) {
        this.$r8$classId = 0;
        int readInt = parcel.readInt();
        long[] jArr = new long[readInt];
        this.mIds = jArr;
        parcel.readLongArray(jArr);
        Parcelable.Creator creator = RemoteViews.CREATOR;
        creator.getClass();
        RemoteViews[] remoteViewsArr = new RemoteViews[readInt];
        parcel.readTypedArray(remoteViewsArr, creator);
        for (int i = 0; i < readInt; i++) {
            if (remoteViewsArr[i] == null) {
                Gson$$ExternalSyntheticBUOutline0.m$4("null element found in ", remoteViewsArr);
                throw null;
            }
        }
        this.mViews = remoteViewsArr;
        this.mHasStableIds = parcel.readInt() == 1;
        this.mViewTypeCount = parcel.readInt();
    }

    public RemoteViewsCompat$RemoteCollectionItems(SideSheetBehavior sideSheetBehavior) {
        this.$r8$classId = 3;
        this.mViews = sideSheetBehavior;
        this.mIds = new Task$$ExternalSyntheticLambda0(23, this);
    }

    public RemoteViewsCompat$RemoteCollectionItems(BottomSheetBehavior bottomSheetBehavior) {
        this.$r8$classId = 2;
        this.mViews = bottomSheetBehavior;
        this.mIds = new LiveData$1(20, this);
    }

    public RemoteViewsCompat$RemoteCollectionItems(Context context, AndroidComposeView$snapshotObserver$1 androidComposeView$snapshotObserver$1) {
        this.$r8$classId = 1;
        this.mIds = androidComposeView$snapshotObserver$1;
        this.mViewTypeCount = 0;
        this.mViews = new GestureDetector(context, new GestureDetector.OnGestureListener() { // from class: androidx.compose.ui.platform.IndirectPointerNavigationGestureDetector$gestureDetector$1
            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                RemoteViewsCompat$RemoteCollectionItems remoteViewsCompat$RemoteCollectionItems = RemoteViewsCompat$RemoteCollectionItems.this;
                AndroidComposeView$snapshotObserver$1 androidComposeView$snapshotObserver$12 = (AndroidComposeView$snapshotObserver$1) remoteViewsCompat$RemoteCollectionItems.mIds;
                if (!remoteViewsCompat$RemoteCollectionItems.mHasStableIds) {
                    int i = remoteViewsCompat$RemoteCollectionItems.mViewTypeCount;
                    if (i == 1) {
                        if (Math.abs(f) > Math.abs(f2)) {
                            ((FocusOwnerImpl) androidComposeView$snapshotObserver$12.this$0.getFocusOwner()).m363moveFocusaToIllA(f > RecyclerView.DECELERATION_RATE ? 1 : 2, false);
                            return true;
                        }
                    } else if (i == 2 && Math.abs(f2) > Math.abs(f)) {
                        ((FocusOwnerImpl) androidComposeView$snapshotObserver$12.this$0.getFocusOwner()).m363moveFocusaToIllA(f2 > RecyclerView.DECELERATION_RATE ? 1 : 2, false);
                    }
                }
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onShowPress(MotionEvent motionEvent) {
            }
        });
    }
}
