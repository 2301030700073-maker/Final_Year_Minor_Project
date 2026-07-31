package androidx.preference;

import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData$1;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.location.StaleStateManager;
import org.maplibre.android.maps.CameraChangeDispatcher;
import org.maplibre.android.maps.MapLibreMap;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PreferenceFragmentCompat extends Fragment {
    public boolean mHavePrefs;
    public boolean mInitDone;
    public RecyclerView mList;
    public PreferenceManager mPreferenceManager;
    public final DividerDecoration mDividerDecoration = new DividerDecoration();
    public int mLayoutResId = R.layout.preference_list_fragment;
    public final AnonymousClass1 mHandler = new AnonymousClass1(this, Looper.getMainLooper());
    public final LiveData$1 mRequestFocus = new LiveData$1(13, this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DividerDecoration extends RecyclerView.ItemDecoration {
        public boolean mAllowDividerAfterLastItem = true;
        public Drawable mDivider;
        public int mDividerHeight;

        public DividerDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            if (shouldDrawDividerBelow(view, recyclerView)) {
                rect.bottom = this.mDividerHeight;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
            if (this.mDivider == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (shouldDrawDividerBelow(childAt, recyclerView)) {
                    int height = childAt.getHeight() + ((int) childAt.getY());
                    this.mDivider.setBounds(0, height, width, this.mDividerHeight + height);
                    this.mDivider.draw(canvas);
                }
            }
        }

        public final boolean shouldDrawDividerBelow(View view, RecyclerView recyclerView) {
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
            if (!(childViewHolder instanceof PreferenceViewHolder) || !((PreferenceViewHolder) childViewHolder).mDividerAllowedBelow) {
                return false;
            }
            boolean z = this.mAllowDividerAfterLastItem;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild >= recyclerView.getChildCount() - 1) {
                return z;
            }
            RecyclerView.ViewHolder childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
            return (childViewHolder2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder2).mDividerAllowedAbove;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        requireContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        requireContext().getTheme().applyStyle(i, false);
        PreferenceManager preferenceManager = new PreferenceManager(requireContext());
        this.mPreferenceManager = preferenceManager;
        preferenceManager.mOnNavigateToScreenListener = this;
        Bundle bundle2 = this.mArguments;
        if (bundle2 != null) {
            bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        }
        onCreatePreferences();
    }

    public abstract void onCreatePreferences();

    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        if (requireContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        requireContext();
        recyclerView2.setLayoutManager(new LinearLayoutManager(1));
        recyclerView2.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(recyclerView2));
        return recyclerView2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedArray obtainStyledAttributes = requireContext().obtainStyledAttributes(null, R$styleable.PreferenceFragmentCompat, R.attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(0, this.mLayoutResId);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(requireContext());
        View inflate = cloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (!(findViewById instanceof ViewGroup)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        RecyclerView onCreateRecyclerView = onCreateRecyclerView(cloneInContext, viewGroup2, bundle);
        this.mList = onCreateRecyclerView;
        DividerDecoration dividerDecoration = this.mDividerDecoration;
        onCreateRecyclerView.addItemDecoration(dividerDecoration);
        if (drawable != null) {
            dividerDecoration.getClass();
            dividerDecoration.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            dividerDecoration.mDividerHeight = 0;
        }
        dividerDecoration.mDivider = drawable;
        RecyclerView recyclerView = PreferenceFragmentCompat.this.mList;
        if (recyclerView.mItemDecorations.size() != 0) {
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (layoutManager != null) {
                layoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
            }
            recyclerView.markItemDecorInsetsDirty();
            recyclerView.requestLayout();
        }
        if (dimensionPixelSize != -1) {
            dividerDecoration.mDividerHeight = dimensionPixelSize;
            RecyclerView recyclerView2 = PreferenceFragmentCompat.this.mList;
            if (recyclerView2.mItemDecorations.size() != 0) {
                RecyclerView.LayoutManager layoutManager2 = recyclerView2.mLayout;
                if (layoutManager2 != null) {
                    layoutManager2.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
                }
                recyclerView2.markItemDecorInsetsDirty();
                recyclerView2.requestLayout();
            }
        }
        dividerDecoration.mAllowDividerAfterLastItem = z;
        if (this.mList.getParent() == null) {
            viewGroup2.addView(this.mList);
        }
        this.mHandler.post(this.mRequestFocus);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        LiveData$1 liveData$1 = this.mRequestFocus;
        AnonymousClass1 anonymousClass1 = this.mHandler;
        anonymousClass1.removeCallbacks(liveData$1);
        anonymousClass1.removeMessages(1);
        if (this.mHavePrefs) {
            this.mList.setAdapter(null);
            PreferenceScreen preferenceScreen = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen;
            if (preferenceScreen != null) {
                preferenceScreen.onDetached();
            }
        }
        this.mList = null;
        this.mCalled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        PreferenceScreen preferenceScreen = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        this.mCalled = true;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = this;
        preferenceManager.mOnDisplayPreferenceDialogListener = this;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        this.mCalled = true;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = null;
        preferenceManager.mOnDisplayPreferenceDialogListener = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        PreferenceScreen preferenceScreen;
        Bundle bundle2;
        PreferenceScreen preferenceScreen2;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen2 = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen) != null) {
            preferenceScreen2.dispatchRestoreInstanceState(bundle2);
        }
        if (this.mHavePrefs && (preferenceScreen = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen) != null) {
            this.mList.setAdapter(new PreferenceGroupAdapter(preferenceScreen));
            preferenceScreen.onAttached();
        }
        this.mInitDone = true;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.preference.PreferenceFragmentCompat$1, reason: invalid class name */
    public final class AnonymousClass1 extends Handler {
        public final /* synthetic */ int $r8$classId;
        public Object this$0;

        public AnonymousClass1(StaleStateManager staleStateManager) {
            this.$r8$classId = 2;
            this.this$0 = new WeakReference(staleStateManager);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (this.$r8$classId) {
                case 0:
                    if (message.what == 1) {
                        PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) this.this$0;
                        PreferenceScreen preferenceScreen = (PreferenceScreen) preferenceFragmentCompat.mPreferenceManager.mPreferenceScreen;
                        if (preferenceScreen != null) {
                            preferenceFragmentCompat.mList.setAdapter(new PreferenceGroupAdapter(preferenceScreen));
                            preferenceScreen.onAttached();
                            break;
                        }
                    }
                    break;
                case 1:
                    int i = message.what;
                    if (i != -3 && i != -2 && i != -1) {
                        if (i == 1) {
                            ((DialogInterface) message.obj).dismiss();
                            break;
                        }
                    } else {
                        ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) ((WeakReference) this.this$0).get(), message.what);
                        break;
                    }
                    break;
                case 2:
                    StaleStateManager staleStateManager = (StaleStateManager) ((WeakReference) this.this$0).get();
                    if (staleStateManager != null) {
                        staleStateManager.setState(true);
                        break;
                    }
                    break;
                default:
                    CameraChangeDispatcher cameraChangeDispatcher = (CameraChangeDispatcher) ((WeakReference) this.this$0).get();
                    if (cameraChangeDispatcher != null) {
                        int i2 = message.what;
                        if (i2 == 0) {
                            CopyOnWriteArrayList copyOnWriteArrayList = cameraChangeDispatcher.onCameraMoveStarted;
                            if (cameraChangeDispatcher.idle) {
                                cameraChangeDispatcher.idle = false;
                                if (!copyOnWriteArrayList.isEmpty()) {
                                    Iterator it = copyOnWriteArrayList.iterator();
                                    while (it.hasNext()) {
                                        ((CameraChangeDispatcher) it.next()).onCameraMoveStarted(cameraChangeDispatcher.moveStartedReason);
                                    }
                                    break;
                                }
                            }
                        } else if (i2 == 1) {
                            CopyOnWriteArrayList copyOnWriteArrayList2 = cameraChangeDispatcher.onCameraMove;
                            if (!copyOnWriteArrayList2.isEmpty() && !cameraChangeDispatcher.idle) {
                                Iterator it2 = copyOnWriteArrayList2.iterator();
                                while (it2.hasNext()) {
                                    ((MapLibreMap.OnCameraMoveListener) it2.next()).onCameraMove();
                                }
                                break;
                            }
                        } else if (i2 == 2) {
                            CopyOnWriteArrayList copyOnWriteArrayList3 = cameraChangeDispatcher.onCameraMoveCanceled;
                            if (!copyOnWriteArrayList3.isEmpty() && !cameraChangeDispatcher.idle) {
                                Iterator it3 = copyOnWriteArrayList3.iterator();
                                while (it3.hasNext()) {
                                    ((CameraChangeDispatcher) it3.next()).handler.scheduleMessage(2);
                                }
                                break;
                            }
                        } else if (i2 == 3) {
                            CopyOnWriteArrayList copyOnWriteArrayList4 = cameraChangeDispatcher.onCameraIdle;
                            if (!cameraChangeDispatcher.idle) {
                                cameraChangeDispatcher.idle = true;
                                if (!copyOnWriteArrayList4.isEmpty()) {
                                    Iterator it4 = copyOnWriteArrayList4.iterator();
                                    while (it4.hasNext()) {
                                        ((MapLibreMap.OnCameraIdleListener) it4.next()).onCameraIdle();
                                    }
                                    break;
                                }
                            }
                        }
                    }
                    break;
            }
        }

        public void scheduleMessage(int i) {
            CameraChangeDispatcher cameraChangeDispatcher = (CameraChangeDispatcher) ((WeakReference) this.this$0).get();
            if (cameraChangeDispatcher != null) {
                if (i == 0) {
                    boolean z = !cameraChangeDispatcher.idle && (hasMessages(3) || hasMessages(2));
                    removeMessages(3);
                    removeMessages(2);
                    if (z) {
                        return;
                    }
                }
                Message message = new Message();
                message.what = i;
                sendMessage(message);
            }
        }

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PreferenceFragmentCompat preferenceFragmentCompat, Looper looper) {
            super(looper);
            this.$r8$classId = 0;
            this.this$0 = preferenceFragmentCompat;
        }
    }
}
