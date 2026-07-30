package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.C3915wL;
import defpackage.C3970xH;
import defpackage.InterfaceC3843v8;
import defpackage.KH;
import defpackage.O4;
import defpackage.QK;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements InterfaceC3843v8 {

    /* renamed from: do, reason: not valid java name */
    public static final Cclass f5812do;

    /* renamed from: case, reason: not valid java name */
    public boolean f5813case;

    /* renamed from: class, reason: not valid java name */
    public int f5814class;

    /* renamed from: const, reason: not valid java name */
    public int f5815const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f5816do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f5817do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageView f5818do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SearchAutoComplete f5819do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cconst f5820do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5821do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f5822do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f5823do;

    /* renamed from: for, reason: not valid java name */
    public final View f5824for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ImageView f5825for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5826for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int[] f5827for;

    /* renamed from: if, reason: not valid java name */
    public final Rect f5828if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Drawable f5829if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final View f5830if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ImageView f5831if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final CharSequence f5832if;

    /* renamed from: new, reason: not valid java name */
    public final View f5833new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final ImageView f5834new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5835new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final int[] f5836new;

    /* renamed from: try, reason: not valid java name */
    public final ImageView f5837try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f5838try;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f5839do;

        /* renamed from: androidx.appcompat.widget.SearchView$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f5839do + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeValue(Boolean.valueOf(this.f5839do));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f5839do = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: do, reason: not valid java name */
        public final Cdo f5840do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public SearchView f5841do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5842do;

        /* renamed from: for, reason: not valid java name */
        public int f5843for;

        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.f5842do) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.f5842do = false;
                }
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3461do(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            Cdo cdo = this.f5840do;
            if (!z) {
                this.f5842do = false;
                removeCallbacks(cdo);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f5842do = true;
                    return;
                }
                this.f5842do = false;
                removeCallbacks(cdo);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f5843for <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f5842do) {
                Cdo cdo = this.f5840do;
                removeCallbacks(cdo);
                post(cdo);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            setMinWidth((int) TypedValue.applyDimension(1, (i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160 : 256, displayMetrics));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.f5841do;
            searchView.m3460super(searchView.f5835new);
            searchView.post(searchView.f5822do);
            if (searchView.f5819do.hasFocus()) {
                searchView.m3456catch();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f5841do.clearFocus();
                        m3461do(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f5841do.hasFocus() && getVisibility() == 0) {
                this.f5842do = true;
                Context context = getContext();
                Cclass cclass = SearchView.f5812do;
                if (context.getResources().getConfiguration().orientation == 2) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        Ccatch.m3463if(this, 1);
                        if (enoughToFilter()) {
                            showDropDown();
                            return;
                        }
                        return;
                    }
                    Cclass cclass2 = SearchView.f5812do;
                    cclass2.getClass();
                    Cclass.m3464do();
                    Method method = cclass2.f5848for;
                    if (method != null) {
                        try {
                            method.invoke(this, Boolean.TRUE);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void setThreshold(int i) {
            super.setThreshold(i);
            this.f5843for = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f5840do = new Cdo();
            this.f5843for = getThreshold();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$break, reason: invalid class name */
    public class Cbreak implements AdapterView.OnItemSelectedListener {
        public Cbreak() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.f5819do.getText();
            throw null;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$case, reason: invalid class name */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SearchView searchView = SearchView.this;
            ImageView imageView = searchView.f5818do;
            SearchAutoComplete searchAutoComplete = searchView.f5819do;
            if (view == imageView) {
                searchView.m3460super(false);
                searchAutoComplete.requestFocus();
                searchAutoComplete.m3461do(true);
                return;
            }
            if (view == searchView.f5825for) {
                if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
                    searchAutoComplete.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    searchAutoComplete.requestFocus();
                    searchAutoComplete.m3461do(true);
                    return;
                } else {
                    if (searchView.f5826for) {
                        searchView.clearFocus();
                        searchView.m3460super(true);
                        return;
                    }
                    return;
                }
            }
            if (view != searchView.f5831if) {
                if (view != searchView.f5834new && view == searchAutoComplete) {
                    searchView.m3456catch();
                    return;
                }
                return;
            }
            Editable text = searchAutoComplete.getText();
            if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
                return;
            }
            searchAutoComplete.m3461do(false);
            searchAutoComplete.dismissDropDown();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$catch, reason: invalid class name */
    public static class Ccatch {
        /* renamed from: do, reason: not valid java name */
        public static void m3462do(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        /* renamed from: if, reason: not valid java name */
        public static void m3463if(SearchAutoComplete searchAutoComplete, int i) {
            searchAutoComplete.setInputMethodMode(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$class, reason: invalid class name */
    public static class Cclass {

        /* renamed from: do, reason: not valid java name */
        public final Method f5847do;

        /* renamed from: for, reason: not valid java name */
        public final Method f5848for;

        /* renamed from: if, reason: not valid java name */
        public final Method f5849if;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        public Cclass() {
            this.f5847do = null;
            this.f5849if = null;
            this.f5848for = null;
            m3464do();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f5847do = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f5849if = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f5848for = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static void m3464do() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$const, reason: invalid class name */
    public static class Cconst extends TouchDelegate {

        /* renamed from: do, reason: not valid java name */
        public final int f5850do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Rect f5851do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f5852do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5853do;

        /* renamed from: for, reason: not valid java name */
        public final Rect f5854for;

        /* renamed from: if, reason: not valid java name */
        public final Rect f5855if;

        public Cconst(Rect rect, Rect rect2, SearchAutoComplete searchAutoComplete) {
            super(rect, searchAutoComplete);
            int scaledTouchSlop = ViewConfiguration.get(searchAutoComplete.getContext()).getScaledTouchSlop();
            this.f5850do = scaledTouchSlop;
            Rect rect3 = new Rect();
            this.f5851do = rect3;
            Rect rect4 = new Rect();
            this.f5854for = rect4;
            Rect rect5 = new Rect();
            this.f5855if = rect5;
            rect3.set(rect);
            rect4.set(rect);
            int i = -scaledTouchSlop;
            rect4.inset(i, i);
            rect5.set(rect2);
            this.f5852do = searchAutoComplete;
        }

        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f5853do;
                    if (z2 && !this.f5854for.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f5853do;
                        this.f5853do = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.f5851do.contains(x, y)) {
                    this.f5853do = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            Rect rect = this.f5855if;
            View view = this.f5852do;
            if (!z || rect.contains(x, y)) {
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            }
            return view.dispatchTouchEvent(motionEvent);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$do, reason: invalid class name */
    public class Cdo implements TextWatcher {
        public Cdo() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView searchView = SearchView.this;
            TextUtils.isEmpty(searchView.f5819do.getText());
            searchView.f5831if.setVisibility(8);
            searchView.f5834new.setVisibility(8);
            searchView.m3457class();
            searchView.f5824for.setVisibility(8);
            charSequence.toString();
            searchView.getClass();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$else, reason: invalid class name */
    public class Celse implements View.OnKeyListener {
        public Celse() {
        }

        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView.this.getClass();
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$for, reason: invalid class name */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SearchView.this.getClass();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$goto, reason: invalid class name */
    public class Cgoto implements TextView.OnEditorActionListener {
        public Cgoto() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchAutoComplete searchAutoComplete = SearchView.this.f5819do;
            Editable text = searchAutoComplete.getText();
            if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
                return true;
            }
            searchAutoComplete.m3461do(false);
            searchAutoComplete.dismissDropDown();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SearchView.this.m3458const();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$new, reason: invalid class name */
    public class Cnew implements View.OnFocusChangeListener {
        public Cnew() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            SearchView.this.getClass();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$this, reason: invalid class name */
    public class Cthis implements AdapterView.OnItemClickListener {
        public Cthis() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.getClass();
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$try, reason: invalid class name */
    public class Ctry implements View.OnLayoutChangeListener {
        public Ctry() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView searchView = SearchView.this;
            View view2 = searchView.f5833new;
            if (view2.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.f5830if.getPaddingLeft();
                Rect rect = new Rect();
                boolean m8568do = C3915wL.m8568do(searchView);
                int dimensionPixelSize = searchView.f5826for ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
                SearchAutoComplete searchAutoComplete = searchView.f5819do;
                searchAutoComplete.getDropDownBackground().getPadding(rect);
                searchAutoComplete.setDropDownHorizontalOffset(m8568do ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    static {
        f5812do = Build.VERSION.SDK_INT < 29 ? new Cclass() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m3456catch() {
        int i = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.f5819do;
        if (i >= 29) {
            Ccatch.m3462do(searchAutoComplete);
            return;
        }
        Cclass cclass = f5812do;
        cclass.getClass();
        Cclass.m3464do();
        Method method = cclass.f5847do;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused) {
            }
        }
        cclass.getClass();
        Cclass.m3464do();
        Method method2 = cclass.f5849if;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused2) {
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final void m3457class() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f5819do.getText());
        if (!z2 && (!this.f5826for || this.f5813case)) {
            z = false;
        }
        int i = z ? 0 : 8;
        ImageView imageView = this.f5825for;
        imageView.setVisibility(i);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.f5838try = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f5819do;
        searchAutoComplete.clearFocus();
        searchAutoComplete.m3461do(false);
        this.f5838try = false;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m3458const() {
        int[] iArr = this.f5819do.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f5830if.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f5824for.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: final, reason: not valid java name */
    public final void m3459final() {
        Drawable drawable;
        CharSequence charSequence = this.f5832if;
        if (charSequence == null) {
            charSequence = this.f5823do;
        }
        if (charSequence == null) {
            charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        boolean z = this.f5826for;
        SearchAutoComplete searchAutoComplete = this.f5819do;
        if (z && (drawable = this.f5829if) != null) {
            int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            charSequence = spannableStringBuilder;
        }
        searchAutoComplete.setHint(charSequence);
    }

    @Override // defpackage.InterfaceC3843v8
    public final void onActionViewCollapsed() {
        SearchAutoComplete searchAutoComplete = this.f5819do;
        searchAutoComplete.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        searchAutoComplete.setSelection(searchAutoComplete.length());
        clearFocus();
        m3460super(true);
        searchAutoComplete.setImeOptions(this.f5815const);
        this.f5813case = false;
    }

    @Override // defpackage.InterfaceC3843v8
    public final void onActionViewExpanded() {
        if (this.f5813case) {
            return;
        }
        this.f5813case = true;
        SearchAutoComplete searchAutoComplete = this.f5819do;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f5815const = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        m3460super(false);
        searchAutoComplete.requestFocus();
        searchAutoComplete.m3461do(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f5822do);
        post(this.f5821do);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.f5819do;
            int[] iArr = this.f5827for;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.f5836new;
            getLocationInWindow(iArr2);
            int i5 = iArr[1] - iArr2[1];
            int i6 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i6;
            int height = searchAutoComplete.getHeight() + i5;
            Rect rect = this.f5816do;
            rect.set(i6, i5, width, height);
            int i7 = rect.left;
            int i8 = rect.right;
            int i9 = i4 - i2;
            Rect rect2 = this.f5828if;
            rect2.set(i7, 0, i8, i9);
            Cconst cconst = this.f5820do;
            if (cconst == null) {
                Cconst cconst2 = new Cconst(rect2, rect, searchAutoComplete);
                this.f5820do = cconst2;
                setTouchDelegate(cconst2);
            } else {
                cconst.f5851do.set(rect2);
                Rect rect3 = cconst.f5854for;
                rect3.set(rect2);
                int i10 = -cconst.f5850do;
                rect3.inset(i10, i10);
                cconst.f5855if.set(rect);
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        if (this.f5835new) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f5814class;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width), size);
        } else if (mode == 0) {
            size = this.f5814class;
            if (size <= 0) {
                size = getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
            }
        } else if (mode == 1073741824 && (i3 = this.f5814class) > 0) {
            size = Math.min(i3, size);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height), size2);
        } else if (mode2 == 0) {
            size2 = getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        m3460super(savedState.f5839do);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5839do = this.f5835new;
        return savedState;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.f5822do);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, Rect rect) {
        if (this.f5838try || !isFocusable()) {
            return false;
        }
        if (this.f5835new) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.f5819do.requestFocus(i, rect);
        if (requestFocus) {
            m3460super(false);
        }
        return requestFocus;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m3460super(boolean z) {
        this.f5835new = z;
        int i = z ? 0 : 8;
        TextUtils.isEmpty(this.f5819do.getText());
        this.f5818do.setVisibility(i);
        this.f5831if.setVisibility(8);
        this.f5817do.setVisibility(z ? 8 : 0);
        ImageView imageView = this.f5837try;
        imageView.setVisibility((imageView.getDrawable() == null || this.f5826for) ? 8 : 0);
        m3457class();
        this.f5834new.setVisibility(8);
        this.f5824for.setVisibility(8);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5816do = new Rect();
        this.f5828if = new Rect();
        this.f5827for = new int[2];
        this.f5836new = new int[2];
        this.f5822do = new Cif();
        this.f5821do = new Cfor();
        new WeakHashMap();
        Ccase ccase = new Ccase();
        Celse celse = new Celse();
        Cgoto cgoto = new Cgoto();
        Cthis cthis = new Cthis();
        Cbreak cbreak = new Cbreak();
        Cdo cdo = new Cdo();
        int[] iArr = O4.f2565private;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C3970xH c3970xH = new C3970xH(context, obtainStyledAttributes);
        QK.m1857import(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        LayoutInflater.from(context).inflate(c3970xH.m8638this(19, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f5819do = searchAutoComplete;
        searchAutoComplete.f5841do = this;
        this.f5817do = findViewById(R.id.search_edit_frame);
        View findViewById = findViewById(R.id.search_plate);
        this.f5830if = findViewById;
        View findViewById2 = findViewById(R.id.submit_area);
        this.f5824for = findViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f5818do = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f5831if = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f5825for = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f5834new = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.f5837try = imageView5;
        findViewById.setBackground(c3970xH.m8639try(20));
        findViewById2.setBackground(c3970xH.m8639try(25));
        imageView.setImageDrawable(c3970xH.m8639try(23));
        imageView2.setImageDrawable(c3970xH.m8639try(15));
        imageView3.setImageDrawable(c3970xH.m8639try(12));
        imageView4.setImageDrawable(c3970xH.m8639try(28));
        imageView5.setImageDrawable(c3970xH.m8639try(23));
        this.f5829if = c3970xH.m8639try(22);
        KH.m1131do(imageView, getResources().getString(R.string.abc_searchview_description_search));
        c3970xH.m8638this(26, R.layout.abc_search_dropdown_item_icons_2line);
        c3970xH.m8638this(13, 0);
        imageView.setOnClickListener(ccase);
        imageView3.setOnClickListener(ccase);
        imageView2.setOnClickListener(ccase);
        imageView4.setOnClickListener(ccase);
        searchAutoComplete.setOnClickListener(ccase);
        searchAutoComplete.addTextChangedListener(cdo);
        searchAutoComplete.setOnEditorActionListener(cgoto);
        searchAutoComplete.setOnItemClickListener(cthis);
        searchAutoComplete.setOnItemSelectedListener(cbreak);
        searchAutoComplete.setOnKeyListener(celse);
        searchAutoComplete.setOnFocusChangeListener(new Cnew());
        boolean m8631do = c3970xH.m8631do(18, true);
        if (this.f5826for != m8631do) {
            this.f5826for = m8631do;
            m3460super(m8631do);
            m3459final();
        }
        int m8637new = c3970xH.m8637new(2, -1);
        if (m8637new != -1) {
            this.f5814class = m8637new;
            requestLayout();
        }
        this.f5823do = c3970xH.m8629catch(14);
        this.f5832if = c3970xH.m8629catch(21);
        int m8635goto = c3970xH.m8635goto(6, -1);
        if (m8635goto != -1) {
            searchAutoComplete.setImeOptions(m8635goto);
        }
        int m8635goto2 = c3970xH.m8635goto(5, -1);
        if (m8635goto2 != -1) {
            searchAutoComplete.setInputType(m8635goto2);
        }
        setFocusable(c3970xH.m8631do(1, true));
        c3970xH.m8633final();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        new Intent("android.speech.action.RECOGNIZE_SPEECH").addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f5833new = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new Ctry());
        }
        m3460super(this.f5826for);
        m3459final();
    }
}
