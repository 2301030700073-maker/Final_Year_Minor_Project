package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
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
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import androidx.preference.DropDownPreference;
import androidx.work.Operation$State;
import com.bumptech.glide.load.Option;
import com.bytehamster.lib.preferencesearch.SearchPreferenceFragment;
import com.fsck.k9.R;
import com.fsck.k9.activity.ChooseIdentity;
import com.fsck.k9.ui.settings.account.AccountSelectionSpinner;
import com.fsck.k9.ui.settings.account.AccountSettingsActivity;
import com.google.android.material.textfield.EndCompoundLayout;
import com.takisoft.datetimepicker.widget.NumberPicker;
import com.takisoft.datetimepicker.widget.TextInputTimePickerView;
import com.takisoft.datetimepicker.widget.TimePicker;
import com.takisoft.datetimepicker.widget.TimePickerClockDelegate;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import kotlin.coroutines.jvm.internal.ModuleNameRetriever;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    public static final ModuleNameRetriever.Cache PRE_API_29_HIDDEN_METHOD_INVOKER;
    public Bundle mAppSearchData;
    public boolean mClearingFocus;
    public final ImageView mCloseButton;
    public final ImageView mCollapsedIcon;
    public int mCollapsedImeOptions;
    public final CharSequence mDefaultQueryHint;
    public final View mDropDownAnchor;
    public boolean mExpandedInActionView;
    public final ImageView mGoButton;
    public boolean mIconified;
    public boolean mIconifiedByDefault;
    public int mMaxWidth;
    public String mOldQueryText;
    public OnQueryTextListener mOnQueryChangeListener;
    public View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
    public View.OnClickListener mOnSearchClickListener;
    public final WeakHashMap mOutsideDrawablesCache;
    public CharSequence mQueryHint;
    public boolean mQueryRefinement;
    public final AnonymousClass1 mReleaseCursorRunnable;
    public final ImageView mSearchButton;
    public final View mSearchEditFrame;
    public final Drawable mSearchHintIcon;
    public final View mSearchPlate;
    public final SearchAutoComplete mSearchSrcTextView;
    public final Rect mSearchSrcTextViewBounds;
    public final Rect mSearchSrtTextViewBoundsExpanded;
    public SearchableInfo mSearchable;
    public final View mSubmitArea;
    public boolean mSubmitButtonEnabled;
    public final int mSuggestionCommitIconResId;
    public final int mSuggestionRowLayout;
    public CursorAdapter mSuggestionsAdapter;
    public final int[] mTemp;
    public final int[] mTemp2;
    public UpdatableTouchDelegate mTouchDelegate;
    public final AnonymousClass1 mUpdateDrawableStateRunnable;
    public CharSequence mUserQuery;
    public final Intent mVoiceAppSearchIntent;
    public final ImageView mVoiceButton;
    public boolean mVoiceButtonEnabled;
    public final Intent mVoiceWebSearchIntent;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.widget.SearchView$3, reason: invalid class name */
    public final class AnonymousClass3 implements View.OnFocusChangeListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass3(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    SearchView searchView = (SearchView) obj;
                    View.OnFocusChangeListener onFocusChangeListener = searchView.mOnQueryTextFocusChangeListener;
                    if (onFocusChangeListener != null) {
                        onFocusChangeListener.onFocusChange(searchView, z);
                        break;
                    }
                    break;
                case 1:
                    NumberPicker numberPicker = (NumberPicker) obj;
                    EditText editText = numberPicker.mInputText;
                    if (!z) {
                        editText.setSelection(0, 0);
                        String valueOf = String.valueOf(((TextView) view).getText());
                        if (!TextUtils.isEmpty(valueOf)) {
                            numberPicker.setValueInternal(numberPicker.getSelectedPos(valueOf.toString()), true);
                            break;
                        } else {
                            numberPicker.updateInputTextView();
                            break;
                        }
                    } else {
                        editText.selectAll();
                        break;
                    }
                default:
                    TimePickerClockDelegate timePickerClockDelegate = (TimePickerClockDelegate) obj;
                    if (z) {
                        int id = view.getId();
                        if (id == R.id.am_label) {
                            TimePickerClockDelegate.access$800(timePickerClockDelegate, 0);
                        } else if (id == R.id.pm_label) {
                            TimePickerClockDelegate.access$800(timePickerClockDelegate, 1);
                        } else if (id == R.id.hours) {
                            timePickerClockDelegate.setCurrentItemShowing(0, true, true);
                        } else if (id == R.id.minutes) {
                            timePickerClockDelegate.setCurrentItemShowing(1, true, true);
                        }
                        ((TimePicker) timePickerClockDelegate.taskExecutor).performHapticFeedback(4);
                        break;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.widget.SearchView$4, reason: invalid class name */
    public final class AnonymousClass4 implements View.OnLayoutChangeListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass4(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            switch (this.$r8$classId) {
                case 0:
                    SearchView searchView = (SearchView) this.this$0;
                    SearchAutoComplete searchAutoComplete = searchView.mSearchSrcTextView;
                    View view2 = searchView.mDropDownAnchor;
                    if (view2.getWidth() > 1) {
                        Resources resources = searchView.getContext().getResources();
                        int paddingLeft = searchView.mSearchPlate.getPaddingLeft();
                        Rect rect = new Rect();
                        boolean z = ViewUtils.sInitComputeFitSystemWindowsMethod;
                        boolean z2 = searchView.getLayoutDirection() == 1;
                        int dimensionPixelSize = searchView.mIconifiedByDefault ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
                        searchAutoComplete.getDropDownBackground().getPadding(rect);
                        int i9 = rect.left;
                        searchAutoComplete.setDropDownHorizontalOffset(z2 ? -i9 : paddingLeft - (i9 + dimensionPixelSize));
                        searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
                        return;
                    }
                    return;
                default:
                    throw null;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api29Impl {
        public static void refreshAutoCompleteResults(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        public static void setInputMethodMode(SearchAutoComplete searchAutoComplete, int i) {
            searchAutoComplete.setInputMethodMode(i);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnCloseListener {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnSuggestionListener {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(2);
        public boolean isIconified;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isIconified = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SearchView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" isIconified=");
            return CameraDevices$CC.m("}", sb, this.isIconified);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.isIconified));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdatableTouchDelegate extends TouchDelegate {
        public final Rect mActualBounds;
        public boolean mDelegateTargeted;
        public final View mDelegateView;
        public final int mSlop;
        public final Rect mSlopBounds;
        public final Rect mTargetBounds;

        public UpdatableTouchDelegate(View view, Rect rect, Rect rect2) {
            super(rect, view);
            int scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.mSlop = scaledTouchSlop;
            Rect rect3 = new Rect();
            this.mTargetBounds = rect3;
            Rect rect4 = new Rect();
            this.mSlopBounds = rect4;
            Rect rect5 = new Rect();
            this.mActualBounds = rect5;
            rect3.set(rect);
            rect4.set(rect);
            int i = -scaledTouchSlop;
            rect4.inset(i, i);
            rect5.set(rect2);
            this.mDelegateView = view;
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
                    z2 = this.mDelegateTargeted;
                    if (z2 && !this.mSlopBounds.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.mDelegateTargeted;
                        this.mDelegateTargeted = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.mTargetBounds.contains(x, y)) {
                    this.mDelegateTargeted = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            Rect rect = this.mActualBounds;
            View view = this.mDelegateView;
            if (!z || rect.contains(x, y)) {
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            }
            return view.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        ModuleNameRetriever.Cache cache = null;
        if (Build.VERSION.SDK_INT < 29) {
            ModuleNameRetriever.Cache cache2 = new ModuleNameRetriever.Cache();
            cache2.getModuleMethod = null;
            cache2.getDescriptorMethod = null;
            cache2.nameMethod = null;
            ModuleNameRetriever.Cache.preApi29Check();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
                cache2.getModuleMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
                cache2.getDescriptorMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                cache2.nameMethod = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            cache = cache2;
        }
        PRE_API_29_HIDDEN_METHOD_INVOKER = cache;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.widget.SearchView$1] */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.appcompat.widget.SearchView$1] */
    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSearchSrcTextViewBounds = new Rect();
        this.mSearchSrtTextViewBoundsExpanded = new Rect();
        this.mTemp = new int[2];
        this.mTemp2 = new int[2];
        final int i2 = 0;
        this.mUpdateDrawableStateRunnable = new Runnable(this) { // from class: androidx.appcompat.widget.SearchView.1
            public final /* synthetic */ SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i3 = i2;
                SearchView searchView = this.this$0;
                switch (i3) {
                    case 0:
                        searchView.updateFocusedState();
                        break;
                    default:
                        CursorAdapter cursorAdapter = searchView.mSuggestionsAdapter;
                        if (cursorAdapter instanceof SuggestionsAdapter) {
                            cursorAdapter.changeCursor(null);
                            break;
                        }
                        break;
                }
            }
        };
        final int i3 = 1;
        this.mReleaseCursorRunnable = new Runnable(this) { // from class: androidx.appcompat.widget.SearchView.1
            public final /* synthetic */ SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i32 = i3;
                SearchView searchView = this.this$0;
                switch (i32) {
                    case 0:
                        searchView.updateFocusedState();
                        break;
                    default:
                        CursorAdapter cursorAdapter = searchView.mSuggestionsAdapter;
                        if (cursorAdapter instanceof SuggestionsAdapter) {
                            cursorAdapter.changeCursor(null);
                            break;
                        }
                        break;
                }
            }
        };
        this.mOutsideDrawablesCache = new WeakHashMap();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchView searchView = SearchView.this;
                SearchAutoComplete searchAutoComplete = searchView.mSearchSrcTextView;
                if (view == searchView.mSearchButton) {
                    searchView.updateViewsVisibility(false);
                    searchAutoComplete.requestFocus();
                    searchAutoComplete.setImeVisibility(true);
                    View.OnClickListener onClickListener2 = searchView.mOnSearchClickListener;
                    if (onClickListener2 != null) {
                        onClickListener2.onClick(searchView);
                        return;
                    }
                    return;
                }
                if (view == searchView.mCloseButton) {
                    searchView.onCloseClicked();
                    return;
                }
                if (view == searchView.mGoButton) {
                    searchView.onSubmitQuery();
                    return;
                }
                if (view != searchView.mVoiceButton) {
                    if (view == searchAutoComplete) {
                        searchView.forceSuggestionQuery();
                        return;
                    }
                    return;
                }
                SearchableInfo searchableInfo = searchView.mSearchable;
                if (searchableInfo == null) {
                    return;
                }
                try {
                    if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                        if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                            searchView.getContext().startActivity(searchView.createVoiceAppSearchIntent(searchView.mVoiceAppSearchIntent, searchableInfo));
                        }
                    } else {
                        Intent intent = new Intent(searchView.mVoiceWebSearchIntent);
                        ComponentName searchActivity = searchableInfo.getSearchActivity();
                        intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                        searchView.getContext().startActivity(intent);
                    }
                } catch (ActivityNotFoundException unused) {
                    Log.w("SearchView", "Could not find voice search activity");
                }
            }
        };
        View.OnKeyListener onKeyListener = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
                SearchView searchView = SearchView.this;
                SearchAutoComplete searchAutoComplete = searchView.mSearchSrcTextView;
                if (searchView.mSearchable != null) {
                    if (!searchAutoComplete.isPopupShowing() || searchAutoComplete.getListSelection() == -1) {
                        if (TextUtils.getTrimmedLength(searchAutoComplete.getText()) != 0 && keyEvent.hasNoModifiers() && keyEvent.getAction() == 1 && i4 == 66) {
                            view.cancelLongPress();
                            searchView.getContext().startActivity(searchView.createIntent("android.intent.action.SEARCH", null, null, searchAutoComplete.getText().toString()));
                            return true;
                        }
                    } else if (searchView.mSearchable != null && searchView.mSuggestionsAdapter != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
                        if (i4 == 66 || i4 == 84 || i4 == 61) {
                            searchView.onItemClicked(searchAutoComplete.getListSelection());
                            return true;
                        }
                        if (i4 == 21 || i4 == 22) {
                            searchAutoComplete.setSelection(i4 == 21 ? 0 : searchAutoComplete.length());
                            searchAutoComplete.setListSelection(0);
                            searchAutoComplete.clearListSelection();
                            searchAutoComplete.ensureImeVisible();
                            return true;
                        }
                        if (i4 == 19) {
                            searchAutoComplete.getListSelection();
                            return false;
                        }
                    }
                }
                return false;
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                SearchView.this.onSubmitQuery();
                return true;
            }
        };
        ChooseIdentity.AnonymousClass1 anonymousClass1 = new ChooseIdentity.AnonymousClass1(2, this);
        AnonymousClass9 anonymousClass9 = new AnonymousClass9(i2, this);
        AnonymousClass10 anonymousClass10 = new AnonymousClass10(i2, this);
        int[] iArr = R$styleable.SearchView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        MenuHostHelper menuHostHelper = new MenuHostHelper(context, obtainStyledAttributes);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        LayoutInflater.from(context).inflate(obtainStyledAttributes.getResourceId(21, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.mSearchSrcTextView = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.mSearchEditFrame = findViewById(R.id.search_edit_frame);
        View findViewById = findViewById(R.id.search_plate);
        this.mSearchPlate = findViewById;
        View findViewById2 = findViewById(R.id.submit_area);
        this.mSubmitArea = findViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.mSearchButton = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.mGoButton = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.mCloseButton = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.mVoiceButton = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.mCollapsedIcon = imageView5;
        findViewById.setBackground(menuHostHelper.getDrawable(22));
        findViewById2.setBackground(menuHostHelper.getDrawable(27));
        imageView.setImageDrawable(menuHostHelper.getDrawable(25));
        imageView2.setImageDrawable(menuHostHelper.getDrawable(17));
        imageView3.setImageDrawable(menuHostHelper.getDrawable(12));
        imageView4.setImageDrawable(menuHostHelper.getDrawable(30));
        imageView5.setImageDrawable(menuHostHelper.getDrawable(25));
        this.mSearchHintIcon = menuHostHelper.getDrawable(24);
        Operation$State.setTooltipText(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.mSuggestionRowLayout = obtainStyledAttributes.getResourceId(28, R.layout.abc_search_dropdown_item_icons_2line);
        this.mSuggestionCommitIconResId = obtainStyledAttributes.getResourceId(13, 0);
        imageView.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        searchAutoComplete.setOnClickListener(onClickListener);
        searchAutoComplete.addTextChangedListener(anonymousClass10);
        searchAutoComplete.setOnEditorActionListener(onEditorActionListener);
        searchAutoComplete.setOnItemClickListener(anonymousClass1);
        searchAutoComplete.setOnItemSelectedListener(anonymousClass9);
        searchAutoComplete.setOnKeyListener(onKeyListener);
        searchAutoComplete.setOnFocusChangeListener(new AnonymousClass3(0, this));
        setIconifiedByDefault(obtainStyledAttributes.getBoolean(20, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.mDefaultQueryHint = obtainStyledAttributes.getText(15);
        this.mQueryHint = obtainStyledAttributes.getText(23);
        int i4 = obtainStyledAttributes.getInt(6, -1);
        if (i4 != -1) {
            setImeOptions(i4);
        }
        int i5 = obtainStyledAttributes.getInt(5, -1);
        if (i5 != -1) {
            setInputType(i5);
        }
        setFocusable(obtainStyledAttributes.getBoolean(1, true));
        menuHostHelper.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.mVoiceWebSearchIntent = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.mVoiceAppSearchIntent = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.mDropDownAnchor = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new AnonymousClass4(0, this));
        }
        updateViewsVisibility(this.mIconifiedByDefault);
        updateQueryHint();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.mClearingFocus = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.mClearingFocus = false;
    }

    public final Intent createIntent(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.mUserQuery);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.mAppSearchData;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.mSearchable.getSearchActivity());
        return intent;
    }

    public final Intent createVoiceAppSearchIntent(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.mAppSearchData;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void forceSuggestionQuery() {
        int i = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        if (i >= 29) {
            Api29Impl.refreshAutoCompleteResults(searchAutoComplete);
            return;
        }
        ModuleNameRetriever.Cache cache = PRE_API_29_HIDDEN_METHOD_INVOKER;
        cache.getClass();
        ModuleNameRetriever.Cache.preApi29Check();
        Method method = cache.getModuleMethod;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, null);
            } catch (Exception unused) {
            }
        }
        cache.getClass();
        ModuleNameRetriever.Cache.preApi29Check();
        Method method2 = cache.getDescriptorMethod;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, null);
            } catch (Exception unused2) {
            }
        }
    }

    public int getImeOptions() {
        return this.mSearchSrcTextView.getImeOptions();
    }

    public int getInputType() {
        return this.mSearchSrcTextView.getInputType();
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public CharSequence getQuery() {
        return this.mSearchSrcTextView.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.mQueryHint;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.mSearchable;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.mDefaultQueryHint : getContext().getText(this.mSearchable.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.mSuggestionCommitIconResId;
    }

    public int getSuggestionRowLayout() {
        return this.mSuggestionRowLayout;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.mSuggestionsAdapter;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public final void onActionViewCollapsed() {
        setQuery$1("");
        clearFocus();
        updateViewsVisibility(true);
        this.mSearchSrcTextView.setImeOptions(this.mCollapsedImeOptions);
        this.mExpandedInActionView = false;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public final void onActionViewExpanded() {
        if (this.mExpandedInActionView) {
            return;
        }
        this.mExpandedInActionView = true;
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.mCollapsedImeOptions = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    public final void onCloseClicked() {
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.mIconifiedByDefault) {
            clearFocus();
            updateViewsVisibility(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.mUpdateDrawableStateRunnable);
        post(this.mReleaseCursorRunnable);
        super.onDetachedFromWindow();
    }

    public final void onItemClicked(int i) {
        int i2;
        String stringOrNull;
        Cursor cursor = this.mSuggestionsAdapter.mCursor;
        if (cursor != null && cursor.moveToPosition(i)) {
            Intent intent = null;
            try {
                int i3 = SuggestionsAdapter.$r8$clinit;
                String stringOrNull2 = SuggestionsAdapter.getStringOrNull(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (stringOrNull2 == null) {
                    stringOrNull2 = this.mSearchable.getSuggestIntentAction();
                }
                if (stringOrNull2 == null) {
                    stringOrNull2 = "android.intent.action.SEARCH";
                }
                String stringOrNull3 = SuggestionsAdapter.getStringOrNull(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (stringOrNull3 == null) {
                    stringOrNull3 = this.mSearchable.getSuggestIntentData();
                }
                if (stringOrNull3 != null && (stringOrNull = SuggestionsAdapter.getStringOrNull(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    stringOrNull3 = stringOrNull3 + "/" + Uri.encode(stringOrNull);
                }
                intent = createIntent(stringOrNull2, stringOrNull3 == null ? null : Uri.parse(stringOrNull3), SuggestionsAdapter.getStringOrNull(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), SuggestionsAdapter.getStringOrNull(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e) {
                try {
                    i2 = cursor.getPosition();
                } catch (RuntimeException unused) {
                    i2 = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e);
            }
            if (intent != null) {
                try {
                    getContext().startActivity(intent);
                } catch (RuntimeException e2) {
                    Log.e("SearchView", "Failed launch activity: " + intent, e2);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void onItemSelected(int i) {
        Editable text = this.mSearchSrcTextView.getText();
        Cursor cursor = this.mSuggestionsAdapter.mCursor;
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i)) {
            setQuery(text);
            return;
        }
        String convertToString = this.mSuggestionsAdapter.convertToString(cursor);
        if (convertToString != null) {
            setQuery(convertToString);
        } else {
            setQuery(text);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
            int[] iArr = this.mTemp;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.mTemp2;
            getLocationInWindow(iArr2);
            int i5 = iArr[1] - iArr2[1];
            int i6 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i6;
            int height = searchAutoComplete.getHeight() + i5;
            Rect rect = this.mSearchSrcTextViewBounds;
            rect.set(i6, i5, width, height);
            int i7 = rect.left;
            int i8 = rect.right;
            int i9 = i4 - i2;
            Rect rect2 = this.mSearchSrtTextViewBoundsExpanded;
            rect2.set(i7, 0, i8, i9);
            UpdatableTouchDelegate updatableTouchDelegate = this.mTouchDelegate;
            if (updatableTouchDelegate == null) {
                UpdatableTouchDelegate updatableTouchDelegate2 = new UpdatableTouchDelegate(searchAutoComplete, rect2, rect);
                this.mTouchDelegate = updatableTouchDelegate2;
                setTouchDelegate(updatableTouchDelegate2);
            } else {
                updatableTouchDelegate.mTargetBounds.set(rect2);
                Rect rect3 = updatableTouchDelegate.mSlopBounds;
                rect3.set(rect2);
                int i10 = -updatableTouchDelegate.mSlop;
                rect3.inset(i10, i10);
                updatableTouchDelegate.mActualBounds.set(rect);
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        if (this.mIconified) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.mMaxWidth;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.mMaxWidth;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i3 = this.mMaxWidth) > 0) {
            size = Math.min(i3, size);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    public final void onQueryRefine(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        updateViewsVisibility(savedState.isIconified);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isIconified = this.mIconified;
        return savedState;
    }

    public final void onSubmitQuery() {
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.mOnQueryChangeListener;
        if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
            if (this.mSearchable != null) {
                getContext().startActivity(createIntent("android.intent.action.SEARCH", null, null, text.toString()));
            }
            searchAutoComplete.setImeVisibility(false);
            searchAutoComplete.dismissDropDown();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.mUpdateDrawableStateRunnable);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, Rect rect) {
        if (this.mClearingFocus || !isFocusable()) {
            return false;
        }
        if (this.mIconified) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.mSearchSrcTextView.requestFocus(i, rect);
        if (requestFocus) {
            updateViewsVisibility(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.mAppSearchData = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            onCloseClicked();
            return;
        }
        updateViewsVisibility(false);
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.mOnSearchClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.mIconifiedByDefault == z) {
            return;
        }
        this.mIconifiedByDefault = z;
        updateViewsVisibility(z);
        updateQueryHint();
    }

    public void setImeOptions(int i) {
        this.mSearchSrcTextView.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.mSearchSrcTextView.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.mMaxWidth = i;
        requestLayout();
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mOnQueryTextFocusChangeListener = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.mOnQueryChangeListener = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.mOnSearchClickListener = onClickListener;
    }

    public final void setQuery$1(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        searchAutoComplete.setText(charSequence);
        if (charSequence != null) {
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.mUserQuery = charSequence;
        }
    }

    public void setQueryHint(CharSequence charSequence) {
        this.mQueryHint = charSequence;
        updateQueryHint();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.mQueryRefinement = z;
        CursorAdapter cursorAdapter = this.mSuggestionsAdapter;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) cursorAdapter).mQueryRefinement = z ? 2 : 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0095, code lost:
    
        if (getContext().getPackageManager().resolveActivity(r0, 65536) != null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSearchableInfo(android.app.SearchableInfo r7) {
        /*
            r6 = this;
            r6.mSearchable = r7
            r0 = 0
            r1 = 1
            androidx.appcompat.widget.SearchView$SearchAutoComplete r2 = r6.mSearchSrcTextView
            if (r7 == 0) goto L65
            int r7 = r7.getSuggestThreshold()
            r2.setThreshold(r7)
            android.app.SearchableInfo r7 = r6.mSearchable
            int r7 = r7.getImeOptions()
            r2.setImeOptions(r7)
            android.app.SearchableInfo r7 = r6.mSearchable
            int r7 = r7.getInputType()
            r3 = r7 & 15
            if (r3 != r1) goto L31
            r3 = -65537(0xfffffffffffeffff, float:NaN)
            r7 = r7 & r3
            android.app.SearchableInfo r3 = r6.mSearchable
            java.lang.String r3 = r3.getSuggestAuthority()
            if (r3 == 0) goto L31
            r3 = 589824(0x90000, float:8.2652E-40)
            r7 = r7 | r3
        L31:
            r2.setInputType(r7)
            androidx.cursoradapter.widget.CursorAdapter r7 = r6.mSuggestionsAdapter
            if (r7 == 0) goto L3b
            r7.changeCursor(r0)
        L3b:
            android.app.SearchableInfo r7 = r6.mSearchable
            java.lang.String r7 = r7.getSuggestAuthority()
            if (r7 == 0) goto L62
            androidx.appcompat.widget.SuggestionsAdapter r7 = new androidx.appcompat.widget.SuggestionsAdapter
            android.content.Context r3 = r6.getContext()
            android.app.SearchableInfo r4 = r6.mSearchable
            java.util.WeakHashMap r5 = r6.mOutsideDrawablesCache
            r7.<init>(r3, r6, r4, r5)
            r6.mSuggestionsAdapter = r7
            r2.setAdapter(r7)
            androidx.cursoradapter.widget.CursorAdapter r7 = r6.mSuggestionsAdapter
            androidx.appcompat.widget.SuggestionsAdapter r7 = (androidx.appcompat.widget.SuggestionsAdapter) r7
            boolean r3 = r6.mQueryRefinement
            if (r3 == 0) goto L5f
            r3 = 2
            goto L60
        L5f:
            r3 = r1
        L60:
            r7.mQueryRefinement = r3
        L62:
            r6.updateQueryHint()
        L65:
            android.app.SearchableInfo r7 = r6.mSearchable
            r3 = 0
            if (r7 == 0) goto L98
            boolean r7 = r7.getVoiceSearchEnabled()
            if (r7 == 0) goto L98
            android.app.SearchableInfo r7 = r6.mSearchable
            boolean r7 = r7.getVoiceSearchLaunchWebSearch()
            if (r7 == 0) goto L7b
            android.content.Intent r0 = r6.mVoiceWebSearchIntent
            goto L85
        L7b:
            android.app.SearchableInfo r7 = r6.mSearchable
            boolean r7 = r7.getVoiceSearchLaunchRecognizer()
            if (r7 == 0) goto L85
            android.content.Intent r0 = r6.mVoiceAppSearchIntent
        L85:
            if (r0 == 0) goto L98
            android.content.Context r7 = r6.getContext()
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            r4 = 65536(0x10000, float:9.1835E-41)
            android.content.pm.ResolveInfo r7 = r7.resolveActivity(r0, r4)
            if (r7 == 0) goto L98
            goto L99
        L98:
            r1 = r3
        L99:
            r6.mVoiceButtonEnabled = r1
            if (r1 == 0) goto La2
            java.lang.String r7 = "nm"
            r2.setPrivateImeOptions(r7)
        La2:
            boolean r7 = r6.mIconified
            r6.updateViewsVisibility(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.mSubmitButtonEnabled = z;
        updateViewsVisibility(this.mIconified);
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.mSuggestionsAdapter = cursorAdapter;
        this.mSearchSrcTextView.setAdapter(cursorAdapter);
    }

    public final void updateCloseButton() {
        boolean isEmpty = TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        int i = (!isEmpty || (this.mIconifiedByDefault && !this.mExpandedInActionView)) ? 0 : 8;
        ImageView imageView = this.mCloseButton;
        imageView.setVisibility(i);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!isEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void updateFocusedState() {
        int[] iArr = this.mSearchSrcTextView.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.mSearchPlate.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.mSubmitArea.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void updateQueryHint() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        if (queryHint == null) {
            queryHint = "";
        }
        boolean z = this.mIconifiedByDefault;
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        if (z && (drawable = this.mSearchHintIcon) != null) {
            int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void updateSubmitArea() {
        this.mSubmitArea.setVisibility(((this.mSubmitButtonEnabled || this.mVoiceButtonEnabled) && !this.mIconified && (this.mGoButton.getVisibility() == 0 || this.mVoiceButton.getVisibility() == 0)) ? 0 : 8);
    }

    public final void updateSubmitButton(boolean z) {
        boolean z2 = this.mSubmitButtonEnabled;
        this.mGoButton.setVisibility((!z2 || !(z2 || this.mVoiceButtonEnabled) || this.mIconified || !hasFocus() || (!z && this.mVoiceButtonEnabled)) ? 8 : 0);
    }

    public final void updateViewsVisibility(boolean z) {
        this.mIconified = z;
        int i = 8;
        int i2 = z ? 0 : 8;
        boolean isEmpty = TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        this.mSearchButton.setVisibility(i2);
        updateSubmitButton(!isEmpty);
        this.mSearchEditFrame.setVisibility(z ? 8 : 0);
        ImageView imageView = this.mCollapsedIcon;
        imageView.setVisibility((imageView.getDrawable() == null || this.mIconifiedByDefault) ? 8 : 0);
        updateCloseButton();
        if (this.mVoiceButtonEnabled && !this.mIconified && isEmpty) {
            this.mGoButton.setVisibility(8);
            i = 0;
        }
        this.mVoiceButton.setVisibility(i);
        updateSubmitArea();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        public boolean mHasPendingShowSoftInputRequest;
        public final AnonymousClass1 mRunShowSoftInputIfNecessary;
        public SearchView mSearchView;
        public int mThreshold;

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.appcompat.widget.SearchView$SearchAutoComplete$1] */
        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.mRunShowSoftInputIfNecessary = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public final void run() {
                    SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                    if (searchAutoComplete.mHasPendingShowSoftInputRequest) {
                        ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                        searchAutoComplete.mHasPendingShowSoftInputRequest = false;
                    }
                }
            };
            this.mThreshold = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.mThreshold <= 0 || super.enoughToFilter();
        }

        public final void ensureImeVisible() {
            if (Build.VERSION.SDK_INT >= 29) {
                Api29Impl.setInputMethodMode(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            ModuleNameRetriever.Cache cache = SearchView.PRE_API_29_HIDDEN_METHOD_INVOKER;
            cache.getClass();
            ModuleNameRetriever.Cache.preApi29Check();
            Method method = cache.nameMethod;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.mHasPendingShowSoftInputRequest) {
                AnonymousClass1 anonymousClass1 = this.mRunShowSoftInputIfNecessary;
                removeCallbacks(anonymousClass1);
                post(anonymousClass1);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.mSearchView;
            searchView.updateViewsVisibility(searchView.mIconified);
            searchView.post(searchView.mUpdateDrawableStateRunnable);
            if (searchView.mSearchSrcTextView.hasFocus()) {
                searchView.forceSuggestionQuery();
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
                        this.mSearchView.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.mSearchView.hasFocus() && getVisibility() == 0) {
                this.mHasPendingShowSoftInputRequest = true;
                Context context = getContext();
                ModuleNameRetriever.Cache cache = SearchView.PRE_API_29_HIDDEN_METHOD_INVOKER;
                if (context.getResources().getConfiguration().orientation == 2) {
                    ensureImeVisible();
                }
            }
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            AnonymousClass1 anonymousClass1 = this.mRunShowSoftInputIfNecessary;
            if (!z) {
                this.mHasPendingShowSoftInputRequest = false;
                removeCallbacks(anonymousClass1);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.mHasPendingShowSoftInputRequest = true;
                    return;
                }
                this.mHasPendingShowSoftInputRequest = false;
                removeCallbacks(anonymousClass1);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.mSearchView = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.mThreshold = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.widget.SearchView$10, reason: invalid class name */
    public final class AnonymousClass10 implements TextWatcher {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass10(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    break;
                case 1:
                    SearchPreferenceFragment searchPreferenceFragment = (SearchPreferenceFragment) obj;
                    searchPreferenceFragment.updateSearchResults(editable.toString());
                    ((ImageView) searchPreferenceFragment.viewHolder.scheme).setVisibility(editable.toString().isEmpty() ? 8 : 0);
                    break;
                default:
                    ((EndCompoundLayout) obj).getEndIconDelegate().afterEditTextChanged();
                    break;
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            switch (this.$r8$classId) {
                case 0:
                case 1:
                    break;
                default:
                    ((EndCompoundLayout) this.this$0).getEndIconDelegate().beforeEditTextChanged();
                    break;
            }
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            switch (this.$r8$classId) {
                case 0:
                    SearchView searchView = (SearchView) this.this$0;
                    Editable text = searchView.mSearchSrcTextView.getText();
                    searchView.mUserQuery = text;
                    boolean isEmpty = TextUtils.isEmpty(text);
                    searchView.updateSubmitButton(!isEmpty);
                    int i4 = 8;
                    if (searchView.mVoiceButtonEnabled && !searchView.mIconified && isEmpty) {
                        searchView.mGoButton.setVisibility(8);
                        i4 = 0;
                    }
                    searchView.mVoiceButton.setVisibility(i4);
                    searchView.updateCloseButton();
                    searchView.updateSubmitArea();
                    if (searchView.mOnQueryChangeListener != null && !TextUtils.equals(charSequence, searchView.mOldQueryText)) {
                        searchView.mOnQueryChangeListener.onQueryTextChange(charSequence.toString());
                    }
                    searchView.mOldQueryText = charSequence.toString();
                    break;
            }
        }

        private final void afterTextChanged$androidx$appcompat$widget$SearchView$10(Editable editable) {
        }

        private final void beforeTextChanged$androidx$appcompat$widget$SearchView$10(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void beforeTextChanged$com$bytehamster$lib$preferencesearch$SearchPreferenceFragment$1(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void onTextChanged$com$bytehamster$lib$preferencesearch$SearchPreferenceFragment$1(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void onTextChanged$com$google$android$material$textfield$EndCompoundLayout$1(int i, int i2, int i3, CharSequence charSequence) {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.widget.SearchView$9, reason: invalid class name */
    public final class AnonymousClass9 implements AdapterView.OnItemSelectedListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass9(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
            DropDownListView dropDownListView;
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    ((SearchView) obj).onItemSelected(i);
                    return;
                case 1:
                    if (i == -1 || (dropDownListView = ((ListPopupWindow) obj).mDropDownList) == null) {
                        return;
                    }
                    dropDownListView.setListSelectionHidden(false);
                    return;
                case 2:
                    DropDownPreference dropDownPreference = (DropDownPreference) obj;
                    if (i >= 0) {
                        String charSequence = dropDownPreference.mEntryValues[i].toString();
                        if (charSequence.equals(dropDownPreference.mValue)) {
                            return;
                        }
                        dropDownPreference.callChangeListener(charSequence);
                        dropDownPreference.setValue(charSequence);
                        return;
                    }
                    return;
                case 3:
                    adapterView.getClass();
                    view.getClass();
                    AccountSettingsActivity accountSettingsActivity = (AccountSettingsActivity) obj;
                    AccountSelectionSpinner accountSelectionSpinner = accountSettingsActivity.accountSpinner;
                    if (accountSelectionSpinner == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("accountSpinner");
                        throw null;
                    }
                    String str = accountSelectionSpinner.getSelection().uuid;
                    String str2 = accountSettingsActivity.accountUuid;
                    if (str2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("accountUuid");
                        throw null;
                    }
                    if (Intrinsics.areEqual(str, str2) || accountSettingsActivity.isFinishing()) {
                        return;
                    }
                    int i3 = AccountSettingsActivity.$r8$clinit;
                    Option.AnonymousClass1.start(accountSettingsActivity, str, null);
                    accountSettingsActivity.finish();
                    return;
                default:
                    TextInputTimePickerView.OnValueTypedListener onValueTypedListener = ((TextInputTimePickerView) obj).mListener;
                    if (i == 0) {
                        ((TimePickerClockDelegate.AnonymousClass2) onValueTypedListener).onValueChanged(2, 0);
                        return;
                    } else {
                        ((TimePickerClockDelegate.AnonymousClass2) onValueTypedListener).onValueChanged(2, 1);
                        return;
                    }
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView adapterView) {
            switch (this.$r8$classId) {
                case 3:
                    adapterView.getClass();
                    break;
            }
        }

        private final void onNothingSelected$androidx$appcompat$widget$ListPopupWindow$3(AdapterView adapterView) {
        }

        private final void onNothingSelected$androidx$appcompat$widget$SearchView$9(AdapterView adapterView) {
        }

        private final void onNothingSelected$androidx$preference$DropDownPreference$1(AdapterView adapterView) {
        }

        private final void onNothingSelected$com$takisoft$datetimepicker$widget$TextInputTimePickerView$3(AdapterView adapterView) {
        }
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context) {
        this(context, null);
    }
}
