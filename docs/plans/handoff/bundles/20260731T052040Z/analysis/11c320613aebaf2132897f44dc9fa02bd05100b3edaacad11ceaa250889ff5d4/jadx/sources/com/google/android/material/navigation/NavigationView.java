package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.BackStackRecord;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator$Api33BackCallbackDelegate;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeableDelegate;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.WriteModeKt;
import net.newpipe.app.ComposeActivity;
import net.newpipe.app.navigation.Destination;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.PriorityQueue;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.databinding.FragmentChannelBinding;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.ktx.ViewUtils$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.bookmark.BookmarkFragment;
import org.schabi.newpipe.local.history.StatisticsPlaylistFragment;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.settings.SettingsActivity;
import org.schabi.newpipe.views.FocusAwareDrawerLayout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements MaterialBackHandler {
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int[] DISABLED_STATE_SET = {-16842910};
    public final AnonymousClass1 backDrawerListener;
    public final ProcessFinisher backOrchestrator;
    public boolean bottomInsetScrimEnabled;
    public final int drawerLayoutCornerSize;
    public OnNavigationItemSelectedListener listener;
    public final int maxWidth;
    public final NavigationMenu menu;
    public SupportMenuInflater menuInflater;
    public final AppCompatSpinner.AnonymousClass2 onGlobalLayoutListener;
    public final NavigationMenuPresenter presenter;
    public final ShapeableDelegate shapeableDelegate;
    public final MaterialSideContainerBackHelper sideContainerBackHelper;
    public final int[] tmpLocation;
    public boolean topInsetScrimEnabled;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface OnNavigationItemSelectedListener {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(12);
        public Bundle menuState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c6  */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.google.android.material.navigation.NavigationView$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NavigationView(android.content.Context r19, android.util.AttributeSet r20, int r21) {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new SupportMenuInflater(getContext());
        }
        return this.menuInflater;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void cancelBackProgress() {
        requireDrawerLayoutParent();
        this.sideContainerBackHelper.cancelBackProgress();
    }

    public final ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = StaticImageDecoderKt.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(org.schabi.newpipe.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = DISABLED_STATE_SET;
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    public final InsetDrawable createDefaultItemDrawable(ProcessFinisher processFinisher, ColorStateList colorStateList) {
        TypedArray typedArray = (TypedArray) processFinisher.config;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(getContext(), typedArray.getResourceId(17, 0), typedArray.getResourceId(18, 0), new AbsoluteCornerSize(0.0f)).build());
        materialShapeDrawable.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) materialShapeDrawable, typedArray.getDimensionPixelSize(22, 0), typedArray.getDimensionPixelSize(23, 0), typedArray.getDimensionPixelSize(21, 0), typedArray.getDimensionPixelSize(20, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        ShapeableDelegate shapeableDelegate = this.shapeableDelegate;
        Path path = shapeableDelegate.shapePath;
        if (!shapeableDelegate.shouldUseCompatClipping() || path.isEmpty()) {
            super.dispatchDraw(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(path);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public MaterialSideContainerBackHelper getBackHelper() {
        return this.sideContainerBackHelper;
    }

    public MenuItem getCheckedItem() {
        return this.presenter.adapter.checkedItem;
    }

    public int getDividerInsetEnd() {
        return this.presenter.dividerInsetEnd;
    }

    public int getDividerInsetStart() {
        return this.presenter.dividerInsetStart;
    }

    public int getHeaderCount() {
        return this.presenter.headerLayout.getChildCount();
    }

    public Drawable getItemBackground() {
        return this.presenter.itemBackground;
    }

    public int getItemHorizontalPadding() {
        return this.presenter.itemHorizontalPadding;
    }

    public int getItemIconPadding() {
        return this.presenter.itemIconPadding;
    }

    public ColorStateList getItemIconTintList() {
        return this.presenter.iconTintList;
    }

    public int getItemMaxLines() {
        return this.presenter.itemMaxLines;
    }

    public ColorStateList getItemTextColor() {
        return this.presenter.textColor;
    }

    public int getItemVerticalPadding() {
        return this.presenter.itemVerticalPadding;
    }

    public Menu getMenu() {
        return this.menu;
    }

    public int getSubheaderInsetEnd() {
        return this.presenter.subheaderInsetEnd;
    }

    public int getSubheaderInsetStart() {
        return this.presenter.subheaderInsetStart;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void handleBackInvoked() {
        Pair requireDrawerLayoutParent = requireDrawerLayoutParent();
        DrawerLayout drawerLayout = (DrawerLayout) requireDrawerLayoutParent.first;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        BackEventCompat backEventCompat = materialSideContainerBackHelper.backEvent;
        materialSideContainerBackHelper.backEvent = null;
        if (backEventCompat == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.closeDrawer(this, true);
            return;
        }
        int i = ((DrawerLayout.LayoutParams) requireDrawerLayoutParent.second).gravity;
        int i2 = DrawerLayoutUtils.DEFAULT_SCRIM_ALPHA;
        materialSideContainerBackHelper.finishBackProgress(backEventCompat, i, new Transition.AnonymousClass2(drawerLayout, this, 3), new ViewUtils$$ExternalSyntheticLambda0(drawerLayout, 1));
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        MaterialBackOrchestrator$Api33BackCallbackDelegate materialBackOrchestrator$Api33BackCallbackDelegate;
        ArrayList arrayList;
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            RangesKt.setParentAbsoluteElevation(this, (MaterialShapeDrawable) background);
        }
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ProcessFinisher processFinisher = this.backOrchestrator;
            if (((MaterialBackOrchestrator$Api33BackCallbackDelegate) processFinisher.context) != null) {
                DrawerLayout drawerLayout = (DrawerLayout) parent;
                AnonymousClass1 anonymousClass1 = this.backDrawerListener;
                if (anonymousClass1 != null && (arrayList = drawerLayout.mListeners) != null) {
                    arrayList.remove(anonymousClass1);
                }
                drawerLayout.addDrawerListener(anonymousClass1);
                if (!DrawerLayout.isDrawerOpen(this) || (materialBackOrchestrator$Api33BackCallbackDelegate = (MaterialBackOrchestrator$Api33BackCallbackDelegate) processFinisher.context) == null) {
                    return;
                }
                materialBackOrchestrator$Api33BackCallbackDelegate.startListeningForBackCallbacks((NavigationView) processFinisher.config, (NavigationView) processFinisher.lastActivityManager, true);
            }
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ArrayList arrayList;
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            AnonymousClass1 anonymousClass1 = this.backDrawerListener;
            if (anonymousClass1 == null || (arrayList = drawerLayout.mListeners) == null) {
                return;
            }
            arrayList.remove(anonymousClass1);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int i3 = this.maxWidth;
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), i3), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        Bundle bundle = savedState.menuState;
        CopyOnWriteArrayList copyOnWriteArrayList = this.menu.mPresenters;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (parcelable2 = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    menuPresenter.onRestoreInstanceState(parcelable2);
                }
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        CopyOnWriteArrayList copyOnWriteArrayList = this.menu.mPresenters;
        if (copyOnWriteArrayList.isEmpty()) {
            return savedState;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (onSaveInstanceState = menuPresenter.onSaveInstanceState()) != null) {
                    sparseArray.put(id, onSaveInstanceState);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.LayoutParams) && (i5 = this.drawerLayoutCornerSize) > 0 && (getBackground() instanceof MaterialShapeDrawable)) {
            int i6 = ((DrawerLayout.LayoutParams) getLayoutParams()).gravity;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            boolean z = Gravity.getAbsoluteGravity(i6, getLayoutDirection()) == 3;
            MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) getBackground();
            FragmentChannelBinding builder = materialShapeDrawable.drawableState.shapeAppearanceModel.toBuilder();
            float f = i5;
            builder.channelKaomoji = new AbsoluteCornerSize(f);
            builder.channelSubscriberView = new AbsoluteCornerSize(f);
            builder.channelTitleView = new AbsoluteCornerSize(f);
            builder.errorContentNotSupported = new AbsoluteCornerSize(f);
            if (z) {
                builder.channelKaomoji = new AbsoluteCornerSize(0.0f);
                builder.errorContentNotSupported = new AbsoluteCornerSize(0.0f);
            } else {
                builder.channelSubscriberView = new AbsoluteCornerSize(0.0f);
                builder.channelTitleView = new AbsoluteCornerSize(0.0f);
            }
            ShapeAppearanceModel build = builder.build();
            materialShapeDrawable.setShapeAppearanceModel(build);
            ShapeableDelegate shapeableDelegate = this.shapeableDelegate;
            shapeableDelegate.shapeAppearanceModel = build;
            shapeableDelegate.updateShapePath();
            shapeableDelegate.invalidateClippingMethod(this);
            shapeableDelegate.maskBounds = new RectF(0.0f, 0.0f, i, i2);
            shapeableDelegate.updateShapePath();
            shapeableDelegate.invalidateClippingMethod(this);
            shapeableDelegate.offsetZeroCornerEdgeBoundsEnabled = true;
            shapeableDelegate.invalidateClippingMethod(this);
        }
    }

    public final Pair requireDrawerLayoutParent() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.LayoutParams)) {
            return new Pair((DrawerLayout) parent, (DrawerLayout.LayoutParams) layoutParams);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
        return null;
    }

    public void setBottomInsetScrimEnabled(boolean z) {
        this.bottomInsetScrimEnabled = z;
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.menu.findItem(menuItem.getItemId());
        if (findItem == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
        } else {
            this.presenter.adapter.setCheckedItem((MenuItemImpl) findItem);
        }
    }

    public void setDividerInsetEnd(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.dividerInsetEnd = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setDividerInsetStart(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.dividerInsetStart = i;
        navigationMenuPresenter.updateMenuView();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).setElevation(f);
        }
    }

    public void setForceCompatClippingEnabled(boolean z) {
        ShapeableDelegate shapeableDelegate = this.shapeableDelegate;
        if (z != shapeableDelegate.forceCompatClippingEnabled) {
            shapeableDelegate.forceCompatClippingEnabled = z;
            shapeableDelegate.invalidateClippingMethod(this);
        }
    }

    public void setItemBackground(Drawable drawable) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemBackground = drawable;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(getContext().getDrawable(i));
    }

    public void setItemHorizontalPadding(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemHorizontalPadding = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemHorizontalPaddingResource(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemHorizontalPadding = dimensionPixelSize;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemIconPadding(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemIconPadding = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemIconPaddingResource(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemIconPadding = dimensionPixelSize;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemIconSize(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        if (navigationMenuPresenter.itemIconSize != i) {
            navigationMenuPresenter.itemIconSize = i;
            navigationMenuPresenter.hasCustomItemIconSize = true;
            navigationMenuPresenter.updateMenuView();
        }
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.iconTintList = colorStateList;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemMaxLines(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemMaxLines = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemTextAppearance(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.textAppearance = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.textAppearanceActiveBoldEnabled = z;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.textColor = colorStateList;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemVerticalPadding(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemVerticalPadding = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setItemVerticalPaddingResource(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.itemVerticalPadding = dimensionPixelSize;
        navigationMenuPresenter.updateMenuView();
    }

    public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.listener = onNavigationItemSelectedListener;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.overScrollMode = i;
            NavigationMenuView navigationMenuView = navigationMenuPresenter.menuView;
            if (navigationMenuView != null) {
                navigationMenuView.setOverScrollMode(i);
            }
        }
    }

    public void setSubheaderInsetEnd(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.subheaderInsetEnd = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setSubheaderInsetStart(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        navigationMenuPresenter.subheaderInsetStart = i;
        navigationMenuPresenter.updateMenuView();
    }

    public void setTopInsetScrimEnabled(boolean z) {
        this.topInsetScrimEnabled = z;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void startBackProgress(BackEventCompat backEventCompat) {
        requireDrawerLayoutParent();
        this.sideContainerBackHelper.backEvent = backEventCompat;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void updateBackProgress(BackEventCompat backEventCompat) {
        int i = ((DrawerLayout.LayoutParams) requireDrawerLayoutParent().second).gravity;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        if (materialSideContainerBackHelper.backEvent == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        BackEventCompat backEventCompat2 = materialSideContainerBackHelper.backEvent;
        materialSideContainerBackHelper.backEvent = backEventCompat;
        if (backEventCompat2 == null) {
            return;
        }
        materialSideContainerBackHelper.updateBackProgress(backEventCompat.progress, i, backEventCompat.swipeEdge == 0);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.navigation.NavigationView$2, reason: invalid class name */
    public final class AnonymousClass2 implements OnApplyWindowInsetsListener, MenuBuilder.Callback {
        public /* synthetic */ AnonymousClass2() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            NavigationView navigationView = NavigationView.this;
            if (navigationView.insets == null) {
                navigationView.insets = new Rect();
            }
            Rect rect = navigationView.insets;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
            rect.set(systemWindowInsetLeft, windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            NavigationMenuPresenter navigationMenuPresenter = navigationView.presenter;
            navigationMenuPresenter.getClass();
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            if (navigationMenuPresenter.paddingTopDefault != systemWindowInsetTop) {
                navigationMenuPresenter.paddingTopDefault = systemWindowInsetTop;
                int i = (navigationMenuPresenter.headerLayout.getChildCount() <= 0 && navigationMenuPresenter.isBehindStatusBar) ? navigationMenuPresenter.paddingTopDefault : 0;
                NavigationMenuView navigationMenuView = navigationMenuPresenter.menuView;
                navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
            }
            NavigationMenuView navigationMenuView2 = navigationMenuPresenter.menuView;
            navigationMenuView2.setPadding(0, navigationMenuView2.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
            ViewCompat.dispatchApplyWindowInsets(navigationMenuPresenter.headerLayout, windowInsetsCompat);
            navigationView.setWillNotDraw(impl.getSystemWindowInsets().equals(Insets.NONE) || navigationView.insetForeground == null);
            navigationView.postInvalidateOnAnimation();
            return impl.consumeSystemWindowInsets();
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.listener;
            if (onNavigationItemSelectedListener != null) {
                MainActivity mainActivity = (MainActivity) ((OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) onNavigationItemSelectedListener).f$0;
                int i = MainActivity.$r8$clinit;
                int groupId = menuItem.getGroupId();
                if (groupId == org.schabi.newpipe.R.id.menu_services_group) {
                    mainActivity.changeService(menuItem);
                } else if (groupId == org.schabi.newpipe.R.id.menu_tabs_group) {
                    int itemId = menuItem.getItemId();
                    if (itemId == -5) {
                        BackStackRecord defaultTransaction = SQLite.defaultTransaction(mainActivity.getSupportFragmentManager());
                        defaultTransaction.replace(org.schabi.newpipe.R.id.fragment_holder, new StatisticsPlaylistFragment(), null);
                        defaultTransaction.addToBackStack(null);
                        defaultTransaction.commit();
                    } else if (itemId == -4) {
                        SQLite.openDownloads(mainActivity);
                    } else if (itemId == -3) {
                        BackStackRecord defaultTransaction2 = SQLite.defaultTransaction(mainActivity.getSupportFragmentManager());
                        defaultTransaction2.replace(org.schabi.newpipe.R.id.fragment_holder, new BookmarkFragment(), null);
                        defaultTransaction2.addToBackStack(null);
                        defaultTransaction2.commit();
                    } else if (itemId == -2) {
                        SQLite.openFeedFragment(mainActivity.getSupportFragmentManager(), -1L, null);
                    } else if (itemId == -1) {
                        BackStackRecord defaultTransaction3 = SQLite.defaultTransaction(mainActivity.getSupportFragmentManager());
                        defaultTransaction3.replace(org.schabi.newpipe.R.id.fragment_holder, new SubscriptionFragment(), null);
                        defaultTransaction3.addToBackStack(null);
                        defaultTransaction3.commit();
                    }
                } else if (groupId == org.schabi.newpipe.R.id.menu_kiosks_group) {
                    try {
                        mainActivity.kioskSelected(menuItem);
                    } catch (Exception e) {
                        ErrorUtil.showUiErrorSnackbar(mainActivity, "Selecting drawer kiosk", e);
                    }
                } else if (groupId == org.schabi.newpipe.R.id.menu_options_about_group) {
                    int itemId2 = menuItem.getItemId();
                    if (itemId2 == 0) {
                        mainActivity.startActivity(new Intent(mainActivity, (Class<?>) SettingsActivity.class));
                    } else if (itemId2 == 1) {
                        Transition.Impl26.openUrlInBrowser(mainActivity, mainActivity.getString(org.schabi.newpipe.R.string.donation_url));
                    } else if (itemId2 == 2) {
                        Destination.About about = Destination.About.INSTANCE;
                        about.getClass();
                        Intent intent = new Intent(mainActivity, (Class<?>) ComposeActivity.class);
                        Json.Default r1 = Json.Default;
                        r1.getClass();
                        KSerializer serializer = Destination.Companion.serializer();
                        serializer.getClass();
                        PriorityQueue priorityQueue = new PriorityQueue((char) 0, 9);
                        CharArrayPool charArrayPool = CharArrayPool.INSTANCE;
                        priorityQueue.array = charArrayPool.m697take(128);
                        try {
                            WriteModeKt.encodeByWriter(r1, priorityQueue, serializer, about);
                            String priorityQueue2 = priorityQueue.toString();
                            char[] cArr = (char[]) priorityQueue.array;
                            charArrayPool.getClass();
                            cArr.getClass();
                            charArrayPool.releaseImpl(cArr);
                            intent.putExtra("SCREEN", priorityQueue2);
                            mainActivity.startActivity(intent);
                        } catch (Throwable th) {
                            CharArrayPool charArrayPool2 = CharArrayPool.INSTANCE;
                            char[] cArr2 = (char[]) priorityQueue.array;
                            charArrayPool2.getClass();
                            cArr2.getClass();
                            charArrayPool2.releaseImpl(cArr2);
                            throw th;
                        }
                    }
                }
                ((FocusAwareDrawerLayout) mainActivity.mainBinding.root).closeDrawers(false);
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    public void setCheckedItem(int i) {
        MenuItem findItem = this.menu.findItem(i);
        if (findItem != null) {
            this.presenter.adapter.setCheckedItem((MenuItemImpl) findItem);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.schabi.newpipe.R.attr.navigationViewStyle);
    }

    public NavigationView(Context context) {
        this(context, null);
    }
}
