package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.preference.DropDownPreference;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.util.Log;
import java.lang.reflect.Method;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    public static final Method sGetMaxAvailableHeightMethod;
    public static final Method sSetClipToWindowEnabledMethod;
    public static final Method sSetEpicenterBoundsMethod;
    public ListAdapter mAdapter;
    public final Context mContext;
    public View mDropDownAnchorView;
    public int mDropDownHorizontalOffset;
    public DropDownListView mDropDownList;
    public int mDropDownVerticalOffset;
    public boolean mDropDownVerticalOffsetSet;
    public Rect mEpicenterBounds;
    public final Handler mHandler;
    public AdapterView.OnItemClickListener mItemClickListener;
    public AdapterView.OnItemSelectedListener mItemSelectedListener;
    public boolean mModal;
    public ViewPager.PagerObserver mObserver;
    public boolean mOverlapAnchor;
    public boolean mOverlapAnchorSet;
    public final AppCompatPopupWindow mPopup;
    public final int mDropDownHeight = -2;
    public int mDropDownWidth = -2;
    public final int mDropDownWindowLayoutType = 1002;
    public int mDropDownGravity = 0;
    public final int mListItemExpandMaximum = Log.LOG_LEVEL_OFF;
    public final ListSelectorHider mResizePopupRunnable = new ListSelectorHider(this, 1);
    public final PopupTouchInterceptor mTouchInterceptor = new PopupTouchInterceptor();
    public final PopupScrollListener mScrollListener = new PopupScrollListener();
    public final ListSelectorHider mHideSelector = new ListSelectorHider(this, 0);
    public final Rect mTempRect = new Rect();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api24Impl {
        public static int getMaxAvailableHeight(PopupWindow popupWindow, View view, int i, boolean z) {
            return popupWindow.getMaxAvailableHeight(view, i, z);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api29Impl {
        public static void setEpicenterBounds(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        public static void setIsClippedToScreen(PopupWindow popupWindow, boolean z) {
            popupWindow.setIsClippedToScreen(z);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ListSelectorHider implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ ListPopupWindow this$0;

        public /* synthetic */ ListSelectorHider(ListPopupWindow listPopupWindow, int i) {
            this.$r8$classId = i;
            this.this$0 = listPopupWindow;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            ListPopupWindow listPopupWindow = this.this$0;
            switch (i) {
                case 0:
                    DropDownListView dropDownListView = listPopupWindow.mDropDownList;
                    if (dropDownListView != null) {
                        dropDownListView.setListSelectionHidden(true);
                        dropDownListView.requestLayout();
                        break;
                    }
                    break;
                default:
                    DropDownListView dropDownListView2 = listPopupWindow.mDropDownList;
                    if (dropDownListView2 != null && dropDownListView2.isAttachedToWindow() && listPopupWindow.mDropDownList.getCount() > listPopupWindow.mDropDownList.getChildCount() && listPopupWindow.mDropDownList.getChildCount() <= listPopupWindow.mListItemExpandMaximum) {
                        listPopupWindow.mPopup.setInputMethodMode(2);
                        listPopupWindow.show();
                        break;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PopupTouchInterceptor implements View.OnTouchListener {
        public PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            ListSelectorHider listSelectorHider = listPopupWindow.mResizePopupRunnable;
            Handler handler = listPopupWindow.mHandler;
            AppCompatPopupWindow appCompatPopupWindow = listPopupWindow.mPopup;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && appCompatPopupWindow != null && appCompatPopupWindow.isShowing() && x >= 0 && x < appCompatPopupWindow.getWidth() && y >= 0 && y < appCompatPopupWindow.getHeight()) {
                handler.postDelayed(listSelectorHider, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            handler.removeCallbacks(listSelectorHider);
            return false;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        Class cls = Boolean.TYPE;
        if (i <= 28) {
            try {
                sSetClipToWindowEnabledMethod = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
                android.util.Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                sSetEpicenterBoundsMethod = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                android.util.Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                sGetMaxAvailableHeightMethod = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
                android.util.Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        int resourceId;
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPopupWindow, i, 0);
        this.mDropDownHorizontalOffset = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.mDropDownVerticalOffset = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.mDropDownVerticalOffsetSet = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.PopupWindow, i, 0);
        if (obtainStyledAttributes2.hasValue(2)) {
            appCompatPopupWindow.setOverlapAnchor(obtainStyledAttributes2.getBoolean(2, false));
        }
        appCompatPopupWindow.setBackgroundDrawable((!obtainStyledAttributes2.hasValue(0) || (resourceId = obtainStyledAttributes2.getResourceId(0, 0)) == 0) ? obtainStyledAttributes2.getDrawable(0) : Cookie.Companion.getDrawable(context, resourceId));
        obtainStyledAttributes2.recycle();
        this.mPopup = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    public DropDownListView createDropDownListView(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        AppCompatPopupWindow appCompatPopupWindow = this.mPopup;
        appCompatPopupWindow.dismiss();
        appCompatPopupWindow.setContentView(null);
        this.mDropDownList = null;
        this.mHandler.removeCallbacks(this.mResizePopupRunnable);
    }

    public final Drawable getBackground() {
        return this.mPopup.getBackground();
    }

    public final int getHorizontalOffset() {
        return this.mDropDownHorizontalOffset;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final DropDownListView getListView() {
        return this.mDropDownList;
    }

    public final int getVerticalOffset() {
        if (this.mDropDownVerticalOffsetSet) {
            return this.mDropDownVerticalOffset;
        }
        return 0;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean isShowing() {
        return this.mPopup.isShowing();
    }

    public void setAdapter(ListAdapter listAdapter) {
        ViewPager.PagerObserver pagerObserver = this.mObserver;
        if (pagerObserver == null) {
            this.mObserver = new ViewPager.PagerObserver(this, 1);
        } else {
            ListAdapter listAdapter2 = this.mAdapter;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(pagerObserver);
            }
        }
        this.mAdapter = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
        }
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.mAdapter);
        }
    }

    public final void setBackgroundDrawable(Drawable drawable) {
        this.mPopup.setBackgroundDrawable(drawable);
    }

    public final void setContentWidth(int i) {
        Drawable background = this.mPopup.getBackground();
        if (background == null) {
            this.mDropDownWidth = i;
            return;
        }
        Rect rect = this.mTempRect;
        background.getPadding(rect);
        this.mDropDownWidth = rect.left + rect.right + i;
    }

    public final void setHorizontalOffset(int i) {
        this.mDropDownHorizontalOffset = i;
    }

    public final void setVerticalOffset(int i) {
        this.mDropDownVerticalOffset = i;
        this.mDropDownVerticalOffsetSet = true;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void show() {
        int i;
        int maxAvailableHeight;
        int paddingBottom;
        DropDownListView dropDownListView;
        DropDownListView dropDownListView2 = this.mDropDownList;
        Context context = this.mContext;
        AppCompatPopupWindow appCompatPopupWindow = this.mPopup;
        int i2 = 1;
        if (dropDownListView2 == null) {
            DropDownListView createDropDownListView = createDropDownListView(context, !this.mModal);
            this.mDropDownList = createDropDownListView;
            createDropDownListView.setAdapter(this.mAdapter);
            this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
            this.mDropDownList.setFocusable(true);
            this.mDropDownList.setFocusableInTouchMode(true);
            this.mDropDownList.setOnItemSelectedListener(new DropDownPreference.AnonymousClass1(this, i2));
            this.mDropDownList.setOnScrollListener(this.mScrollListener);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.mItemSelectedListener;
            if (onItemSelectedListener != null) {
                this.mDropDownList.setOnItemSelectedListener(onItemSelectedListener);
            }
            appCompatPopupWindow.setContentView(this.mDropDownList);
        }
        Drawable background = appCompatPopupWindow.getBackground();
        Rect rect = this.mTempRect;
        if (background != null) {
            background.getPadding(rect);
            int i3 = rect.top;
            i = rect.bottom + i3;
            if (!this.mDropDownVerticalOffsetSet) {
                this.mDropDownVerticalOffset = -i3;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        boolean z = appCompatPopupWindow.getInputMethodMode() == 2;
        View view = this.mDropDownAnchorView;
        int i4 = this.mDropDownVerticalOffset;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = sGetMaxAvailableHeightMethod;
            if (method != null) {
                try {
                    maxAvailableHeight = ((Integer) method.invoke(appCompatPopupWindow, view, Integer.valueOf(i4), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                    android.util.Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            maxAvailableHeight = appCompatPopupWindow.getMaxAvailableHeight(view, i4);
        } else {
            maxAvailableHeight = Api24Impl.getMaxAvailableHeight(appCompatPopupWindow, view, i4, z);
        }
        int i5 = this.mDropDownHeight;
        if (i5 == -1) {
            paddingBottom = maxAvailableHeight + i;
        } else {
            int i6 = this.mDropDownWidth;
            int measureHeightOfChildrenCompat = this.mDropDownList.measureHeightOfChildrenCompat(i6 != -2 ? i6 != -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), maxAvailableHeight);
            paddingBottom = measureHeightOfChildrenCompat + (measureHeightOfChildrenCompat > 0 ? this.mDropDownList.getPaddingBottom() + this.mDropDownList.getPaddingTop() + i : 0);
        }
        boolean z2 = appCompatPopupWindow.getInputMethodMode() == 2;
        appCompatPopupWindow.setWindowLayoutType(this.mDropDownWindowLayoutType);
        if (appCompatPopupWindow.isShowing()) {
            if (this.mDropDownAnchorView.isAttachedToWindow()) {
                int i7 = this.mDropDownWidth;
                if (i7 == -1) {
                    i7 = -1;
                } else if (i7 == -2) {
                    i7 = this.mDropDownAnchorView.getWidth();
                }
                if (i5 == -1) {
                    i5 = z2 ? paddingBottom : -1;
                    int i8 = this.mDropDownWidth;
                    if (z2) {
                        appCompatPopupWindow.setWidth(i8 == -1 ? -1 : 0);
                        appCompatPopupWindow.setHeight(0);
                    } else {
                        appCompatPopupWindow.setWidth(i8 == -1 ? -1 : 0);
                        appCompatPopupWindow.setHeight(-1);
                    }
                } else if (i5 == -2) {
                    i5 = paddingBottom;
                }
                appCompatPopupWindow.setOutsideTouchable(true);
                int i9 = i7;
                appCompatPopupWindow.update(this.mDropDownAnchorView, this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, i9 < 0 ? -1 : i9, i5 < 0 ? -1 : i5);
                return;
            }
            return;
        }
        int i10 = this.mDropDownWidth;
        if (i10 == -1) {
            i10 = -1;
        } else if (i10 == -2) {
            i10 = this.mDropDownAnchorView.getWidth();
        }
        if (i5 == -1) {
            i5 = -1;
        } else if (i5 == -2) {
            i5 = paddingBottom;
        }
        appCompatPopupWindow.setWidth(i10);
        appCompatPopupWindow.setHeight(i5);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = sSetClipToWindowEnabledMethod;
            if (method2 != null) {
                try {
                    method2.invoke(appCompatPopupWindow, Boolean.TRUE);
                } catch (Exception unused2) {
                    android.util.Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            Api29Impl.setIsClippedToScreen(appCompatPopupWindow, true);
        }
        appCompatPopupWindow.setOutsideTouchable(true);
        appCompatPopupWindow.setTouchInterceptor(this.mTouchInterceptor);
        if (this.mOverlapAnchorSet) {
            appCompatPopupWindow.setOverlapAnchor(this.mOverlapAnchor);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = sSetEpicenterBoundsMethod;
            if (method3 != null) {
                try {
                    method3.invoke(appCompatPopupWindow, this.mEpicenterBounds);
                } catch (Exception e) {
                    android.util.Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            Api29Impl.setEpicenterBounds(appCompatPopupWindow, this.mEpicenterBounds);
        }
        appCompatPopupWindow.showAsDropDown(this.mDropDownAnchorView, this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
        this.mDropDownList.setSelection(-1);
        if ((!this.mModal || this.mDropDownList.isInTouchMode()) && (dropDownListView = this.mDropDownList) != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
        if (this.mModal) {
            return;
        }
        this.mHandler.post(this.mHideSelector);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PopupScrollListener implements AbsListView.OnScrollListener {
        public PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            ListSelectorHider listSelectorHider = listPopupWindow.mResizePopupRunnable;
            AppCompatPopupWindow appCompatPopupWindow = listPopupWindow.mPopup;
            if (i != 1 || appCompatPopupWindow.getInputMethodMode() == 2 || appCompatPopupWindow.getContentView() == null) {
                return;
            }
            listPopupWindow.mHandler.removeCallbacks(listSelectorHider);
            listSelectorHider.run();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }
    }
}
