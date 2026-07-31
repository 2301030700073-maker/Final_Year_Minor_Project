package androidx.core.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RemoteViews;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1;
import androidx.core.widget.RemoteViewsCompat$RemoteCollectionItems;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.controller.MessagingController;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteViewsCompat$RemoteCollectionItems {
    public final /* synthetic */ int $r8$classId;
    public boolean mHasStableIds;
    public final Object mIds;
    public int mViewTypeCount;
    public final Object mViews;

    public RemoteViewsCompat$RemoteCollectionItems(Parcel parcel) {
        this.$r8$classId = 0;
        parcel.getClass();
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
                throw new IllegalArgumentException("null element found in " + remoteViewsArr + '.');
            }
        }
        this.mViews = remoteViewsArr;
        this.mHasStableIds = parcel.readInt() == 1;
        this.mViewTypeCount = parcel.readInt();
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
                        ((View) bottomSheetBehavior.viewRef.get()).postOnAnimation((MessagingController.AnonymousClass1) obj);
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
                        ((View) sideSheetBehavior.viewRef.get()).postOnAnimation((Fragment$$ExternalSyntheticLambda0) obj);
                        this.mHasStableIds = true;
                        break;
                    }
                }
                break;
        }
    }

    public RemoteViewsCompat$RemoteCollectionItems(long[] jArr, RemoteViews[] remoteViewsArr) {
        this.$r8$classId = 0;
        this.mIds = jArr;
        this.mViews = remoteViewsArr;
        this.mHasStableIds = false;
        this.mViewTypeCount = 1;
        if (jArr.length == remoteViewsArr.length) {
            ArrayList arrayList = new ArrayList(remoteViewsArr.length);
            for (RemoteViews remoteViews : remoteViewsArr) {
                arrayList.add(Integer.valueOf(remoteViews.getLayoutId()));
            }
            int size = CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList)).size();
            if (size <= 1) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(size, "View type count is set to 1, but the collection contains ", " different layout ids"));
            throw null;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("RemoteCollectionItems has different number of ids and views");
        throw null;
    }

    public RemoteViewsCompat$RemoteCollectionItems(SideSheetBehavior sideSheetBehavior) {
        this.$r8$classId = 3;
        this.mViews = sideSheetBehavior;
        this.mIds = new Fragment$$ExternalSyntheticLambda0(14, this);
    }

    public RemoteViewsCompat$RemoteCollectionItems(BottomSheetBehavior bottomSheetBehavior) {
        this.$r8$classId = 2;
        this.mViews = bottomSheetBehavior;
        this.mIds = new MessagingController.AnonymousClass1(3, this);
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
                            ((FocusOwnerImpl) androidComposeView$snapshotObserver$12.this$0.getFocusOwner()).m415moveFocusaToIllA(f > 0.0f ? 1 : 2, false);
                            return true;
                        }
                    } else if (i == 2 && Math.abs(f2) > Math.abs(f)) {
                        ((FocusOwnerImpl) androidComposeView$snapshotObserver$12.this$0.getFocusOwner()).m415moveFocusaToIllA(f2 > 0.0f ? 1 : 2, false);
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
