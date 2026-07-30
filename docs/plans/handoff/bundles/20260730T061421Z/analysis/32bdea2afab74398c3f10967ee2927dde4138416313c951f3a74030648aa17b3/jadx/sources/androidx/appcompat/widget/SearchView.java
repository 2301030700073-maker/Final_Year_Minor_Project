package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
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
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.customview.view.AbsSavedState;
import b.b.b;
import b.b.f.c;
import b.b.g.C0070r0;
import b.b.g.C0079w;
import b.b.g.H0;
import b.b.g.I0;
import b.b.g.J0;
import b.b.g.K0;
import b.b.g.L0;
import b.b.g.M0;
import b.b.g.N0;
import b.b.g.O0;
import b.b.g.P0;
import b.b.g.Q0;
import b.b.g.R0;
import b.b.g.S0;
import b.b.g.T0;
import b.b.g.a1;
import b.e.i.q;
import c.a.c.a.a;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SearchView extends C0070r0 implements c {
    public Rect A;
    public int[] B;
    public int[] C;
    public final ImageView D;
    public final Drawable E;
    public final Intent F;
    public final Intent G;
    public final CharSequence H;
    public View.OnFocusChangeListener I;
    public boolean J;
    public boolean K;
    public CharSequence L;
    public boolean M;
    public int N;
    public CharSequence O;
    public CharSequence P;
    public boolean Q;
    public int R;
    public SearchableInfo S;
    public final Runnable T;
    public Runnable U;
    public final View.OnClickListener V;
    public View.OnKeyListener W;
    public final TextView.OnEditorActionListener a0;
    public final AdapterView.OnItemClickListener b0;
    public final AdapterView.OnItemSelectedListener c0;
    public TextWatcher d0;
    public final SearchAutoComplete p;
    public final View q;
    public final View r;
    public final View s;
    public final ImageView t;
    public final ImageView u;
    public final ImageView v;
    public final ImageView w;
    public final View x;
    public T0 y;
    public Rect z;

    public class SavedState extends AbsSavedState {
        public static final Parcelable.Creator CREATOR = new R0();

        /* renamed from: c, reason: collision with root package name */
        public boolean f60c;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder f = a.f("SearchView.SavedState{");
            f.append(Integer.toHexString(System.identityHashCode(this)));
            f.append(" isIconified=");
            f.append(this.f60c);
            f.append("}");
            return f.toString();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f94a, i);
            parcel.writeValue(Boolean.valueOf(this.f60c));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f60c = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public class SearchAutoComplete extends C0079w {

        /* renamed from: d, reason: collision with root package name */
        public int f61d;
        public SearchView e;
        public boolean f;
        public final Runnable g;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public void a(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f = false;
                removeCallbacks(this.g);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f = true;
                    return;
                }
                this.f = false;
                removeCallbacks(this.g);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f61d <= 0 || super.enoughToFilter();
        }

        @Override // b.b.g.C0079w, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f) {
                removeCallbacks(this.g);
                post(this.g);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            setMinWidth((int) TypedValue.applyDimension(1, (i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160 : 256, displayMetrics));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.e;
            searchView.y(searchView.K);
            searchView.post(searchView.T);
            if (searchView.p.hasFocus()) {
                searchView.p.refreshAutoCompleteResults();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
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
                        this.e.clearFocus();
                        a(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.e.hasFocus() && getVisibility() == 0) {
                this.f = true;
                if (SearchView.r(getContext())) {
                    setInputMethodMode(1);
                    if (enoughToFilter()) {
                        showDropDown();
                    }
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f61d = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.g = new S0(this);
            this.f61d = getThreshold();
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public static boolean r(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    @Override // b.b.f.c
    public void c() {
        if (this.Q) {
            return;
        }
        this.Q = true;
        int imeOptions = this.p.getImeOptions();
        this.R = imeOptions;
        this.p.setImeOptions(imeOptions | 33554432);
        this.p.setText("");
        y(false);
        this.p.requestFocus();
        this.p.a(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.M = true;
        super.clearFocus();
        this.p.clearFocus();
        this.p.a(false);
        this.M = false;
    }

    @Override // b.b.f.c
    public void d() {
        this.p.setText("");
        SearchAutoComplete searchAutoComplete = this.p;
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.P = "";
        clearFocus();
        y(true);
        this.p.setImeOptions(this.R);
        this.Q = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.T);
        post(this.U);
        super.onDetachedFromWindow();
    }

    @Override // b.b.g.C0070r0, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.p;
            Rect rect = this.z;
            searchAutoComplete.getLocationInWindow(this.B);
            getLocationInWindow(this.C);
            int[] iArr = this.B;
            int i5 = iArr[1];
            int[] iArr2 = this.C;
            int i6 = i5 - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            rect.set(i7, i6, searchAutoComplete.getWidth() + i7, searchAutoComplete.getHeight() + i6);
            Rect rect2 = this.A;
            Rect rect3 = this.z;
            rect2.set(rect3.left, 0, rect3.right, i4 - i2);
            T0 t0 = this.y;
            if (t0 != null) {
                t0.a(this.A, this.z);
                return;
            }
            T0 t02 = new T0(this.A, this.z, this.p);
            this.y = t02;
            setTouchDelegate(t02);
        }
    }

    @Override // b.b.g.C0070r0, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.K) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.N;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width), size);
        } else if (mode == 0) {
            size = this.N;
            if (size <= 0) {
                size = getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
            }
        } else if (mode == 1073741824 && (i3 = this.N) > 0) {
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
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f94a);
        y(savedState.f60c);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f60c = this.K;
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.T);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.M || !isFocusable()) {
            return false;
        }
        if (this.K) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.p.requestFocus(i, rect);
        if (requestFocus) {
            y(false);
        }
        return requestFocus;
    }

    public void s() {
        if (!TextUtils.isEmpty(this.p.getText())) {
            this.p.setText("");
            this.p.requestFocus();
            this.p.a(true);
        } else if (this.J) {
            clearFocus();
            y(true);
        }
    }

    public boolean t(int i) {
        throw null;
    }

    public void u() {
        Editable text = this.p.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        this.p.a(false);
        this.p.dismissDropDown();
    }

    public final void v() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.p.getText());
        if (!z2 && (!this.J || this.Q)) {
            z = false;
        }
        this.v.setVisibility(z ? 0 : 8);
        Drawable drawable = this.v.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public void w() {
        int[] iArr = this.p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void x() {
        CharSequence charSequence = this.L;
        if (charSequence == null) {
            charSequence = this.H;
        }
        SearchAutoComplete searchAutoComplete = this.p;
        if (charSequence == null) {
            charSequence = "";
        }
        if (this.J && this.E != null) {
            int textSize = (int) (this.p.getTextSize() * 1.25d);
            this.E.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.E), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            charSequence = spannableStringBuilder;
        }
        searchAutoComplete.setHint(charSequence);
    }

    public final void y(boolean z) {
        this.K = z;
        int i = z ? 0 : 8;
        TextUtils.isEmpty(this.p.getText());
        this.t.setVisibility(i);
        this.u.setVisibility(8);
        this.q.setVisibility(z ? 8 : 0);
        this.D.setVisibility((this.D.getDrawable() == null || this.J) ? 8 : 0);
        v();
        this.w.setVisibility(8);
        this.s.setVisibility(8);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.z = new Rect();
        this.A = new Rect();
        this.B = new int[2];
        this.C = new int[2];
        this.T = new I0(this);
        this.U = new J0(this);
        new WeakHashMap();
        this.V = new M0(this);
        this.W = new N0(this);
        this.a0 = new O0(this);
        this.b0 = new P0(this);
        this.c0 = new Q0(this);
        this.d0 = new H0(this);
        a1 a1Var = new a1(context, context.obtainStyledAttributes(attributeSet, b.u, i, 0));
        LayoutInflater.from(context).inflate(a1Var.j(9, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.p = searchAutoComplete;
        searchAutoComplete.e = this;
        this.q = findViewById(R.id.search_edit_frame);
        this.r = findViewById(R.id.search_plate);
        this.s = findViewById(R.id.submit_area);
        this.t = (ImageView) findViewById(R.id.search_button);
        this.u = (ImageView) findViewById(R.id.search_go_btn);
        this.v = (ImageView) findViewById(R.id.search_close_btn);
        this.w = (ImageView) findViewById(R.id.search_voice_btn);
        this.D = (ImageView) findViewById(R.id.search_mag_icon);
        q.E(this.r, a1Var.e(10));
        this.s.setBackground(a1Var.e(14));
        this.t.setImageDrawable(a1Var.e(13));
        this.u.setImageDrawable(a1Var.e(7));
        this.v.setImageDrawable(a1Var.e(4));
        this.w.setImageDrawable(a1Var.e(16));
        this.D.setImageDrawable(a1Var.e(13));
        this.E = a1Var.e(12);
        this.t.setTooltipText(getResources().getString(R.string.abc_searchview_description_search));
        a1Var.j(15, R.layout.abc_search_dropdown_item_icons_2line);
        a1Var.j(5, 0);
        this.t.setOnClickListener(this.V);
        this.v.setOnClickListener(this.V);
        this.u.setOnClickListener(this.V);
        this.w.setOnClickListener(this.V);
        this.p.setOnClickListener(this.V);
        this.p.addTextChangedListener(this.d0);
        this.p.setOnEditorActionListener(this.a0);
        this.p.setOnItemClickListener(this.b0);
        this.p.setOnItemSelectedListener(this.c0);
        this.p.setOnKeyListener(this.W);
        this.p.setOnFocusChangeListener(new K0(this));
        boolean a2 = a1Var.a(8, true);
        if (this.J != a2) {
            this.J = a2;
            y(a2);
            x();
        }
        int d2 = a1Var.d(1, -1);
        if (d2 != -1) {
            this.N = d2;
            requestLayout();
        }
        this.H = a1Var.l(6);
        this.L = a1Var.l(11);
        int h = a1Var.h(3, -1);
        if (h != -1) {
            this.p.setImeOptions(h);
        }
        int h2 = a1Var.h(2, -1);
        if (h2 != -1) {
            this.p.setInputType(h2);
        }
        setFocusable(a1Var.a(0, true));
        a1Var.f513b.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.F = intent;
        intent.addFlags(268435456);
        this.F.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.G = intent2;
        intent2.addFlags(268435456);
        View findViewById = findViewById(this.p.getDropDownAnchor());
        this.x = findViewById;
        if (findViewById != null) {
            findViewById.addOnLayoutChangeListener(new L0(this));
        }
        y(this.J);
        x();
    }
}
