package org.wikipedia.databinding;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.NestedAdapterWrapper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.memory.MemoryCacheService;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.expandable.ExpandableWidgetHelper;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;
import org.maplibre.android.gestures.BaseGesture;
import org.maplibre.android.gestures.MoveGestureDetector;
import org.maplibre.android.gestures.MultiFingerGesture;
import org.maplibre.android.gestures.MultiFingerTapGestureDetector;
import org.maplibre.android.gestures.RotateGestureDetector;
import org.maplibre.android.gestures.ShoveGestureDetector;
import org.maplibre.android.gestures.SidewaysShoveGestureDetector;
import org.maplibre.android.gestures.StandardGestureDetector;
import org.maplibre.android.gestures.StandardScaleGestureDetector;
import org.maplibre.android.location.engine.LocationEngineRequest;
import org.wikipedia.R;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.LanguageScrollView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FragmentNewsBinding {
    public final Object appBarLayout;
    public final Object gradientView;
    public final Object headerImageView;
    public final Object newsStoryItemsRecyclerview;
    public final Object rootView;
    public Object storyTextView;
    public final Object toolbar;
    public final Object toolbarContainer;

    public FragmentNewsBinding(Context context, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.rootView = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.appBarLayout = arrayList3;
        arrayList2.addAll(arrayList);
        RotateGestureDetector rotateGestureDetector = new RotateGestureDetector(context, this);
        this.newsStoryItemsRecyclerview = rotateGestureDetector;
        StandardScaleGestureDetector standardScaleGestureDetector = new StandardScaleGestureDetector(context, this);
        this.headerImageView = standardScaleGestureDetector;
        ShoveGestureDetector shoveGestureDetector = new ShoveGestureDetector(context, this);
        this.storyTextView = shoveGestureDetector;
        SidewaysShoveGestureDetector sidewaysShoveGestureDetector = new SidewaysShoveGestureDetector(context, this);
        MultiFingerTapGestureDetector multiFingerTapGestureDetector = new MultiFingerTapGestureDetector(context, this);
        this.toolbar = multiFingerTapGestureDetector;
        MoveGestureDetector moveGestureDetector = new MoveGestureDetector(context, this);
        this.toolbarContainer = moveGestureDetector;
        StandardGestureDetector standardGestureDetector = new StandardGestureDetector(context, this);
        this.gradientView = standardGestureDetector;
        arrayList3.add(rotateGestureDetector);
        arrayList3.add(standardScaleGestureDetector);
        arrayList3.add(shoveGestureDetector);
        arrayList3.add(sidewaysShoveGestureDetector);
        arrayList3.add(multiFingerTapGestureDetector);
        arrayList3.add(moveGestureDetector);
        arrayList3.add(standardGestureDetector);
        if (z) {
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                BaseGesture baseGesture = (BaseGesture) it.next();
                if (baseGesture instanceof MultiFingerGesture) {
                    if (Build.VERSION.SDK_INT < 24) {
                        MultiFingerGesture multiFingerGesture = (MultiFingerGesture) baseGesture;
                        multiFingerGesture.spanThreshold = multiFingerGesture.context.getResources().getDimension(R.dimen.mapbox_internalMinSpan23);
                    } else {
                        MultiFingerGesture multiFingerGesture2 = (MultiFingerGesture) baseGesture;
                        multiFingerGesture2.spanThreshold = multiFingerGesture2.context.getResources().getDimension(R.dimen.mapbox_internalMinSpan24);
                    }
                }
                if (baseGesture instanceof StandardScaleGestureDetector) {
                    StandardScaleGestureDetector standardScaleGestureDetector2 = (StandardScaleGestureDetector) baseGesture;
                    standardScaleGestureDetector2.spanSinceStartThreshold = standardScaleGestureDetector2.context.getResources().getDimension(R.dimen.mapbox_defaultScaleSpanSinceStartThreshold);
                }
                if (baseGesture instanceof ShoveGestureDetector) {
                    ShoveGestureDetector shoveGestureDetector2 = (ShoveGestureDetector) baseGesture;
                    shoveGestureDetector2.pixelDeltaThreshold = shoveGestureDetector2.context.getResources().getDimension(R.dimen.mapbox_defaultShovePixelThreshold);
                    shoveGestureDetector2.maxShoveAngle = 20.0f;
                }
                if (baseGesture instanceof SidewaysShoveGestureDetector) {
                    SidewaysShoveGestureDetector sidewaysShoveGestureDetector2 = (SidewaysShoveGestureDetector) baseGesture;
                    sidewaysShoveGestureDetector2.pixelDeltaThreshold = sidewaysShoveGestureDetector2.context.getResources().getDimension(R.dimen.mapbox_defaultShovePixelThreshold);
                    sidewaysShoveGestureDetector2.maxShoveAngle = 20.0f;
                }
                if (baseGesture instanceof MultiFingerTapGestureDetector) {
                    MultiFingerTapGestureDetector multiFingerTapGestureDetector2 = (MultiFingerTapGestureDetector) baseGesture;
                    multiFingerTapGestureDetector2.multiFingerTapMovementThreshold = multiFingerTapGestureDetector2.context.getResources().getDimension(R.dimen.mapbox_defaultMultiTapMovementThreshold);
                    multiFingerTapGestureDetector2.multiFingerTapTimeThreshold = 150L;
                }
                if (baseGesture instanceof RotateGestureDetector) {
                    ((RotateGestureDetector) baseGesture).angleThreshold = 15.3f;
                }
            }
        }
    }

    public boolean addAdapter(int i, RecyclerView.Adapter adapter) {
        ArrayList arrayList = (ArrayList) this.newsStoryItemsRecyclerview;
        if (i < 0 || i > arrayList.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + arrayList.size() + ". Given:" + i);
        }
        if (((ConcatAdapter.Config.StableIdMode) this.toolbar) != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            Operation$State.checkArgument("All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS", adapter.mHasStableIds);
        } else if (adapter.mHasStableIds) {
            Log.w("ConcatAdapter", "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids");
        }
        int indexOfWrapper = indexOfWrapper(adapter);
        if ((indexOfWrapper == -1 ? null : (NestedAdapterWrapper) arrayList.get(indexOfWrapper)) != null) {
            return false;
        }
        NestedAdapterWrapper nestedAdapterWrapper = new NestedAdapterWrapper(adapter, this, (PriorityQueue) this.appBarLayout, ((StableIdStorage) this.toolbarContainer).createStableIdLookup());
        arrayList.add(i, nestedAdapterWrapper);
        Iterator it = ((ArrayList) this.gradientView).iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = (RecyclerView) ((WeakReference) it.next()).get();
            if (recyclerView != null) {
                adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (nestedAdapterWrapper.mCachedItemCount > 0) {
            ((ConcatAdapter) this.rootView).notifyItemRangeInserted(countItemsBefore(nestedAdapterWrapper), nestedAdapterWrapper.mCachedItemCount);
        }
        calculateAndUpdateStateRestorationPolicy();
        return true;
    }

    public void calculateAndUpdateStateRestorationPolicy() {
        RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy;
        Iterator it = ((ArrayList) this.newsStoryItemsRecyclerview).iterator();
        while (true) {
            if (!it.hasNext()) {
                stateRestorationPolicy = RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
                break;
            }
            NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) it.next();
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy2 = nestedAdapterWrapper.adapter.mStateRestorationPolicy;
            stateRestorationPolicy = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            if (stateRestorationPolicy2 == stateRestorationPolicy || (stateRestorationPolicy2 == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && nestedAdapterWrapper.mCachedItemCount == 0)) {
                break;
            }
        }
        ConcatAdapter concatAdapter = (ConcatAdapter) this.rootView;
        if (stateRestorationPolicy != concatAdapter.mStateRestorationPolicy) {
            concatAdapter.mStateRestorationPolicy = stateRestorationPolicy;
            concatAdapter.mObservable.notifyStateRestorationPolicyChanged();
        }
    }

    public int countItemsBefore(NestedAdapterWrapper nestedAdapterWrapper) {
        NestedAdapterWrapper nestedAdapterWrapper2;
        Iterator it = ((ArrayList) this.newsStoryItemsRecyclerview).iterator();
        int i = 0;
        while (it.hasNext() && (nestedAdapterWrapper2 = (NestedAdapterWrapper) it.next()) != nestedAdapterWrapper) {
            i += nestedAdapterWrapper2.mCachedItemCount;
        }
        return i;
    }

    public ExpandableWidgetHelper findWrapperAndLocalPosition(int i) {
        ExpandableWidgetHelper expandableWidgetHelper = (ExpandableWidgetHelper) this.storyTextView;
        if (expandableWidgetHelper.expanded) {
            expandableWidgetHelper = new ExpandableWidgetHelper();
        } else {
            expandableWidgetHelper.expanded = true;
        }
        Iterator it = ((ArrayList) this.newsStoryItemsRecyclerview).iterator();
        int i2 = i;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) it.next();
            int i3 = nestedAdapterWrapper.mCachedItemCount;
            if (i3 > i2) {
                expandableWidgetHelper.widget = nestedAdapterWrapper;
                expandableWidgetHelper.expandedComponentIdHint = i2;
                break;
            }
            i2 -= i3;
        }
        if (((NestedAdapterWrapper) expandableWidgetHelper.widget) != null) {
            return expandableWidgetHelper;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Cannot find wrapper for "));
        return null;
    }

    public NestedAdapterWrapper getWrapper(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) ((IdentityHashMap) this.headerImageView).get(viewHolder);
        if (nestedAdapterWrapper != null) {
            return nestedAdapterWrapper;
        }
        TimeSource$Companion$$ExternalSyntheticLambda0.m$1("Cannot find wrapper for ", viewHolder, ", seems like it is not bound by this adapter: ", this);
        return null;
    }

    public int indexOfWrapper(RecyclerView.Adapter adapter) {
        ArrayList arrayList = (ArrayList) this.newsStoryItemsRecyclerview;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((NestedAdapterWrapper) arrayList.get(i)).adapter == adapter) {
                return i;
            }
        }
        return -1;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean analyzeEvent;
        Iterator it = ((ArrayList) this.appBarLayout).iterator();
        boolean z = false;
        while (it.hasNext()) {
            BaseGesture baseGesture = (BaseGesture) it.next();
            if (motionEvent == null) {
                baseGesture.getClass();
                analyzeEvent = false;
            } else {
                MotionEvent motionEvent2 = baseGesture.previousEvent;
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                    baseGesture.previousEvent = null;
                }
                MotionEvent motionEvent3 = baseGesture.currentEvent;
                if (motionEvent3 != null) {
                    baseGesture.previousEvent = MotionEvent.obtain(motionEvent3);
                    baseGesture.currentEvent.recycle();
                    baseGesture.currentEvent = null;
                }
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                baseGesture.currentEvent = obtain;
                baseGesture.gestureDuration = obtain.getEventTime() - baseGesture.currentEvent.getDownTime();
                analyzeEvent = baseGesture.analyzeEvent(motionEvent);
            }
            if (analyzeEvent) {
                z = true;
            }
        }
        return z;
    }

    public FragmentNewsBinding(MaterialButton materialButton, LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, RecyclerView recyclerView, TextView textView3, TextView textView4) {
        this.rootView = materialButton;
        this.appBarLayout = linearLayout;
        this.gradientView = textView;
        this.headerImageView = textView2;
        this.storyTextView = linearLayout2;
        this.newsStoryItemsRecyclerview = recyclerView;
        this.toolbar = textView3;
        this.toolbarContainer = textView4;
    }

    public FragmentNewsBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, View view, TextView textView2, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3) {
        this.rootView = linearLayout;
        this.appBarLayout = imageView;
        this.headerImageView = textView;
        this.gradientView = view;
        this.newsStoryItemsRecyclerview = textView2;
        this.storyTextView = materialButton;
        this.toolbar = materialButton2;
        this.toolbarContainer = materialButton3;
    }

    public FragmentNewsBinding(LinearLayout linearLayout, CabSearchView cabSearchView, LinearLayout linearLayout2, LangCodeView langCodeView, LanguageScrollView languageScrollView, LinearLayout linearLayout3, LinearProgressIndicator linearProgressIndicator, MaterialToolbar materialToolbar) {
        this.rootView = linearLayout;
        this.appBarLayout = cabSearchView;
        this.gradientView = linearLayout2;
        this.headerImageView = langCodeView;
        this.newsStoryItemsRecyclerview = languageScrollView;
        this.storyTextView = linearLayout3;
        this.toolbarContainer = linearProgressIndicator;
        this.toolbar = materialToolbar;
    }

    public FragmentNewsBinding(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Operation$State.resolveTypedValueOrThrow(R.attr.materialCalendarStyle, context, MaterialCalendar.class.getCanonicalName()).data, R$styleable.MaterialCalendar);
        this.rootView = RulerTrackingMap.create(context, obtainStyledAttributes.getResourceId(4, 0));
        this.toolbar = RulerTrackingMap.create(context, obtainStyledAttributes.getResourceId(2, 0));
        this.appBarLayout = RulerTrackingMap.create(context, obtainStyledAttributes.getResourceId(3, 0));
        this.gradientView = RulerTrackingMap.create(context, obtainStyledAttributes.getResourceId(5, 0));
        ColorStateList colorStateList = OperationKt.getColorStateList(context, obtainStyledAttributes, 7);
        this.headerImageView = RulerTrackingMap.create(context, obtainStyledAttributes.getResourceId(9, 0));
        this.newsStoryItemsRecyclerview = RulerTrackingMap.create(context, obtainStyledAttributes.getResourceId(8, 0));
        this.storyTextView = RulerTrackingMap.create(context, obtainStyledAttributes.getResourceId(10, 0));
        Paint paint = new Paint();
        this.toolbarContainer = paint;
        paint.setColor(colorStateList.getDefaultColor());
        obtainStyledAttributes.recycle();
    }

    public FragmentNewsBinding(ConcatAdapter concatAdapter) {
        ConcatAdapter.Config config = ConcatAdapter.Config.DEFAULT;
        this.gradientView = new ArrayList();
        this.headerImageView = new IdentityHashMap();
        this.newsStoryItemsRecyclerview = new ArrayList();
        this.storyTextView = new ExpandableWidgetHelper();
        this.rootView = concatAdapter;
        config.getClass();
        PriorityQueue priorityQueue = new PriorityQueue((char) 0, 6);
        priorityQueue.array = new SparseArray();
        priorityQueue.size = 0;
        this.appBarLayout = priorityQueue;
        ConcatAdapter.Config.StableIdMode stableIdMode = config.stableIdMode;
        this.toolbar = stableIdMode;
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.toolbarContainer = new MemoryCacheService(3, (byte) 0);
            return;
        }
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            LocationEngineRequest.Builder builder = new LocationEngineRequest.Builder();
            builder.fastestInterval = 0L;
            this.toolbarContainer = builder;
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
            this.toolbarContainer = new MemoryCacheService(4, (byte) 0);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("unknown stable id mode");
            throw null;
        }
    }

    public /* synthetic */ FragmentNewsBinding(ViewGroup viewGroup, View view, View view2, View view3, View view4, TextView textView, View view5, View view6) {
        this.rootView = viewGroup;
        this.appBarLayout = view;
        this.gradientView = view2;
        this.headerImageView = view3;
        this.newsStoryItemsRecyclerview = view4;
        this.storyTextView = textView;
        this.toolbar = view5;
        this.toolbarContainer = view6;
    }
}
