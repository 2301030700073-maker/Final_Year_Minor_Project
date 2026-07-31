package com.tokenautocomplete;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ReplacementSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.core.view.inputmethod.InputConnectionCompat$2;
import androidx.emoji2.viewsintegration.EmojiInputConnection;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.view.RecipientSelectView;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TokenCompleteTextView<T> extends AppCompatAutoCompleteTextView implements TextView.OnEditorActionListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean allowCollapse;
    public CountSpan countSpan;
    public SpannableStringBuilder hiddenContent;
    public boolean initialized;
    public boolean internalEditInProgress;
    public transient String lastCompletionText;
    public Layout lastLayout;
    public TokenListener listener;
    public boolean performBestGuess;
    public TokenImageSpan pressedTokenSpan;
    public boolean savingState;
    public Object selectedObject;
    public boolean shouldFocusNext;
    public TokenSpanWatcher spanWatcher;
    public boolean suppressImeOnNextFocus;
    public TokenTextWatcher textWatcher;
    public int tokenLimit;
    public Tokenizer tokenizer;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OpenPgpError.AnonymousClass1(8);
        public boolean allowCollapse;
        public ArrayList baseObjects;
        public String contentText;
        public String parcelableClassName;
        public boolean performBestGuess;
        public int[] tokenEnds;
        public int[] tokenStarts;
        public Tokenizer tokenizer;

        public final String toString() {
            return ("TokenCompleteTextView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " tokens=" + this.baseObjects).concat("}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.allowCollapse ? 1 : 0);
            parcel.writeInt(this.performBestGuess ? 1 : 0);
            if ("Serializable".equals(this.parcelableClassName)) {
                parcel.writeString("Serializable");
                parcel.writeSerializable(this.baseObjects);
            } else {
                parcel.writeString(this.parcelableClassName);
                parcel.writeList(this.baseObjects);
            }
            parcel.writeString(this.tokenizer.getClass().getCanonicalName());
            parcel.writeParcelable(this.tokenizer, 0);
            parcel.writeString(this.contentText);
            parcel.writeIntArray(this.tokenStarts);
            parcel.writeIntArray(this.tokenEnds);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class TokenImageSpan extends ReplacementSpan implements NoCopySpan {
        public int cachedMaxWidth;
        public RecipientSelectView layout;
        public RecipientSelectView.Recipient token;
        public View view;

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            prepView();
            canvas.save();
            canvas.translate(f, i3);
            this.view.draw(canvas);
            canvas.restore();
        }

        @Override // android.text.style.ReplacementSpan
        public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            View view = this.view;
            prepView();
            if (fontMetricsInt != null) {
                int measuredHeight = view.getMeasuredHeight();
                int baseline = view.getBaseline();
                if (baseline == -1) {
                    baseline = measuredHeight;
                }
                int i3 = -baseline;
                fontMetricsInt.top = i3;
                fontMetricsInt.ascent = i3;
                int i4 = measuredHeight - baseline;
                fontMetricsInt.bottom = i4;
                fontMetricsInt.descent = i4;
            }
            return view.getRight();
        }

        public final void prepView() {
            View view = this.view;
            RecipientSelectView recipientSelectView = this.layout;
            if (recipientSelectView.getMaxViewSpanWidth() != this.cachedMaxWidth || view.isLayoutRequested()) {
                int maxViewSpanWidth = recipientSelectView.getMaxViewSpanWidth();
                this.cachedMaxWidth = maxViewSpanWidth;
                view.measure(View.MeasureSpec.makeMeasureSpec(maxViewSpanWidth, maxViewSpanWidth == 0 ? 0 : Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
                view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface TokenListener {
        void onTokenAdded(Object obj);

        void onTokenIgnored(Object obj);

        void onTokenRemoved(Object obj);
    }

    private Range getCurrentCandidateTokenRange() {
        Editable text = getText();
        int selectionEnd = getSelectionEnd();
        int length = text.length();
        int i = 0;
        for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(0, text.length(), TokenImageSpan.class)) {
            int spanEnd = text.getSpanEnd(tokenImageSpan);
            if (i < spanEnd && selectionEnd >= spanEnd) {
                i = spanEnd;
            }
            int spanStart = text.getSpanStart(tokenImageSpan);
            if (length > spanStart && selectionEnd <= spanEnd) {
                length = spanStart;
            }
        }
        return length < i ? new Range(selectionEnd, selectionEnd) : new Range(i, length);
    }

    public static boolean isTouchInsideSpan(Editable editable, Layout layout, TokenImageSpan tokenImageSpan, float f, float f2) {
        int spanStart = editable.getSpanStart(tokenImageSpan);
        int spanEnd = editable.getSpanEnd(tokenImageSpan);
        if (spanStart < 0 || spanEnd <= spanStart) {
            return false;
        }
        int lineForOffset = layout.getLineForOffset(spanStart);
        int lineForOffset2 = layout.getLineForOffset(spanEnd);
        int i = lineForOffset;
        while (i <= lineForOffset2) {
            int lineTop = layout.getLineTop(i);
            int lineBottom = layout.getLineBottom(i);
            if (f2 >= lineTop && f2 <= lineBottom) {
                float primaryHorizontal = i == lineForOffset ? layout.getPrimaryHorizontal(spanStart) : layout.getLineLeft(i);
                float primaryHorizontal2 = i == lineForOffset2 ? layout.getPrimaryHorizontal(spanEnd) : layout.getLineRight(i);
                if (f >= Math.min(primaryHorizontal, primaryHorizontal2) && f <= Math.max(primaryHorizontal, primaryHorizontal2)) {
                    return true;
                }
            }
            i++;
        }
        return false;
    }

    public final void addListeners() {
        Editable text = getText();
        if (text != null) {
            text.setSpan(this.spanWatcher, 0, text.length(), 18);
            addTextChangedListener(this.textWatcher);
        }
    }

    public final void addObjectSync(RecipientSelectView.Recipient recipient) {
        if (recipient == null) {
            return;
        }
        if (((RecipientSelectView) this).getObjects().contains(recipient)) {
            TokenListener tokenListener = this.listener;
            if (tokenListener != null) {
                tokenListener.onTokenIgnored(recipient);
                return;
            }
            return;
        }
        if (this.tokenLimit == -1 || getObjects().size() != this.tokenLimit) {
            RecipientSelectView.RecipientTokenSpan buildSpanForObject = buildSpanForObject(recipient);
            CharSequence wrapTokenValue = ((CharacterTokenizer) this.tokenizer).wrapTokenValue(buildSpanForObject.token.address.toString());
            Editable text = getText();
            if (text != null) {
                if (this.hiddenContent == null) {
                    this.internalEditInProgress = true;
                    int length = text.length();
                    Range currentCandidateTokenRange = getCurrentCandidateTokenRange();
                    int i = currentCandidateTokenRange.end;
                    int i2 = currentCandidateTokenRange.start;
                    if (i - i2 > 0) {
                        length = i2;
                    }
                    text.insert(length, wrapTokenValue);
                    text.insert(wrapTokenValue.length() + length, " ");
                    text.setSpan(buildSpanForObject, length, wrapTokenValue.length() + length, 33);
                    this.internalEditInProgress = false;
                } else {
                    CharSequence wrapTokenValue2 = ((CharacterTokenizer) this.tokenizer).wrapTokenValue(buildSpanForObject.token.address.toString());
                    int length2 = this.hiddenContent.length();
                    this.hiddenContent.append(wrapTokenValue2);
                    this.hiddenContent.append((CharSequence) " ");
                    this.hiddenContent.setSpan(buildSpanForObject, length2, wrapTokenValue2.length() + length2, 33);
                    updateCountSpan();
                }
            }
            if (getText() == null || !isFocused()) {
                return;
            }
            setSelection(getText().length());
        }
    }

    public abstract RecipientSelectView.RecipientTokenSpan buildSpanForObject(Object obj);

    public final void canDeleteSelection(int i) {
        if (getObjects().isEmpty()) {
            return;
        }
        getSelectionEnd();
        if (i == 1) {
            getSelectionStart();
        }
        Editable text = getText();
        for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(0, text.length(), TokenImageSpan.class)) {
            text.getSpanStart(tokenImageSpan);
            text.getSpanEnd(tokenImageSpan);
            RecipientSelectView.Recipient recipient = tokenImageSpan.token;
        }
    }

    public final void clearCompletionText() {
        if (currentCompletionText().length() == 0) {
            return;
        }
        Range currentCandidateTokenRange = getCurrentCandidateTokenRange();
        this.internalEditInProgress = true;
        getText().delete(currentCandidateTokenRange.start, currentCandidateTokenRange.end);
        this.internalEditInProgress = false;
    }

    @Override // android.widget.AutoCompleteTextView
    public final CharSequence convertSelectionToString(Object obj) {
        this.selectedObject = obj;
        return "";
    }

    public final String currentCompletionText() {
        Editable text = getText();
        Range currentCandidateTokenRange = getCurrentCandidateTokenRange();
        String trim = TextUtils.substring(text, currentCandidateTokenRange.start, currentCandidateTokenRange.end).trim();
        Log.d("TokenAutoComplete", "Current completion text: " + trim);
        return trim;
    }

    @Override // android.widget.AutoCompleteTextView
    public final boolean enoughToFilter() {
        if (this.tokenizer == null || getSelectionEnd() < 0) {
            return false;
        }
        Range currentCandidateTokenRange = getCurrentCandidateTokenRange();
        return currentCandidateTokenRange.end - currentCandidateTokenRange.start >= Math.max(getThreshold(), 1);
    }

    @Override // android.widget.TextView
    public final boolean extractText(ExtractedTextRequest extractedTextRequest, ExtractedText extractedText) {
        try {
            return super.extractText(extractedTextRequest, extractedText);
        } catch (IndexOutOfBoundsException e) {
            Log.d("TokenAutoComplete", "extractText hit IndexOutOfBoundsException. This may be normal.", e);
            return false;
        }
    }

    public CharSequence getContentText() {
        SpannableStringBuilder spannableStringBuilder = this.hiddenContent;
        return spannableStringBuilder != null ? spannableStringBuilder : getText();
    }

    public int getMaxViewSpanWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public List<T> getObjects() {
        ArrayList arrayList = new ArrayList();
        Editable text = getText();
        SpannableStringBuilder spannableStringBuilder = this.hiddenContent;
        if (spannableStringBuilder != null) {
            text = spannableStringBuilder;
        }
        for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(0, text.length(), TokenImageSpan.class)) {
            arrayList.add(tokenImageSpan.token);
        }
        return arrayList;
    }

    public List<Serializable> getSerializableObjects() {
        ArrayList arrayList = new ArrayList();
        for (T t : getObjects()) {
            if (t instanceof Serializable) {
                arrayList.add((Serializable) t);
            } else {
                Log.e("TokenAutoComplete", "Unable to save '" + t + "'");
            }
        }
        if (arrayList.size() != getObjects().size()) {
            Log.e("TokenAutoComplete", "You should make your objects Serializable or Parcelable or\noverride getSerializableObjects and convertSerializableArrayToObjectArray");
        }
        return arrayList;
    }

    public CharSequence getTextForAccessibility() {
        if (getObjects().isEmpty()) {
            return getText();
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Editable text = getText();
        int i = -1;
        int i2 = 0;
        int i3 = -1;
        while (i2 < text.length()) {
            if (i2 == Selection.getSelectionStart(text)) {
                i = spannableStringBuilder.length();
            }
            if (i2 == Selection.getSelectionEnd(text)) {
                i3 = spannableStringBuilder.length();
            }
            TokenImageSpan[] tokenImageSpanArr = (TokenImageSpan[]) text.getSpans(i2, i2, TokenImageSpan.class);
            if (tokenImageSpanArr.length > 0) {
                TokenImageSpan tokenImageSpan = tokenImageSpanArr[0];
                spannableStringBuilder = spannableStringBuilder.append(((CharacterTokenizer) this.tokenizer).wrapTokenValue(tokenImageSpan.token.address.toString()));
                i2 = text.getSpanEnd(tokenImageSpan);
            } else {
                spannableStringBuilder = spannableStringBuilder.append(text.subSequence(i2, i2 + 1));
            }
            i2++;
        }
        if (i2 == Selection.getSelectionStart(text)) {
            i = spannableStringBuilder.length();
        }
        if (i2 == Selection.getSelectionEnd(text)) {
            i3 = spannableStringBuilder.length();
        }
        if (i >= 0 && i3 >= 0) {
            Selection.setSelection(spannableStringBuilder, i, i3);
        }
        return spannableStringBuilder;
    }

    public final void init$1() {
        if (this.initialized) {
            return;
        }
        setTokenizer(new CharacterTokenizer(Arrays.asList(',', ';'), ","));
        getText();
        this.spanWatcher = new TokenSpanWatcher();
        this.textWatcher = new TokenTextWatcher();
        this.hiddenContent = null;
        CountSpan countSpan = new CountSpan();
        countSpan.countText = "";
        this.countSpan = countSpan;
        addListeners();
        setTextIsSelectable(false);
        setLongClickable(false);
        setInputType(getInputType() | 589824);
        setHorizontallyScrolling(false);
        setOnEditorActionListener(this);
        setFilters(new InputFilter[]{new InputFilter() { // from class: com.tokenautocomplete.TokenCompleteTextView.1
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                if (tokenCompleteTextView.internalEditInProgress) {
                    return null;
                }
                if (tokenCompleteTextView.tokenLimit != -1 && tokenCompleteTextView.getObjects().size() == tokenCompleteTextView.tokenLimit) {
                    return "";
                }
                if (charSequence.length() != 1) {
                    return null;
                }
                CharacterTokenizer characterTokenizer = (CharacterTokenizer) tokenCompleteTextView.tokenizer;
                characterTokenizer.getClass();
                for (int i5 = 0; i5 < charSequence.length(); i5++) {
                    if (characterTokenizer.splitChar.contains(Character.valueOf(charSequence.charAt(i5)))) {
                        tokenCompleteTextView.performCompletion();
                        return "";
                    }
                }
                return null;
            }
        }});
        this.initialized = true;
    }

    @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection == null) {
            return null;
        }
        InputConnectionCompat$2 inputConnectionCompat$2 = new InputConnectionCompat$2(this, (EmojiInputConnection) onCreateInputConnection);
        editorInfo.imeOptions = (editorInfo.imeOptions & (-1073741825)) | 268435456;
        return inputConnectionCompat$2;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        performCompletion();
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager == null) {
            return true;
        }
        inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        return true;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.allowCollapse) {
            performCollapse(z);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 8192) {
            CharSequence textForAccessibility = getTextForAccessibility();
            accessibilityEvent.setFromIndex(Selection.getSelectionStart(textForAccessibility));
            accessibilityEvent.setToIndex(Selection.getSelectionEnd(textForAccessibility));
            accessibilityEvent.setItemCount(textForAccessibility.length());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 23 || i == 61 || i == 66) {
            if (keyEvent.hasNoModifiers()) {
                this.shouldFocusNext = true;
                return true;
            }
        } else if (i == 67) {
            canDeleteSelection(1);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean onKeyUp = super.onKeyUp(i, keyEvent);
        if (this.shouldFocusNext) {
            this.shouldFocusNext = false;
            performCompletion();
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            }
        }
        return onKeyUp;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.lastLayout = getLayout();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.allowCollapse = savedState.allowCollapse;
        this.performBestGuess = savedState.performBestGuess;
        this.tokenizer = savedState.tokenizer;
        removeListeners();
        "Serializable".equals(savedState.parcelableClassName);
        ArrayList arrayList = savedState.baseObjects;
        this.savingState = true;
        this.internalEditInProgress = true;
        try {
            this.hiddenContent = null;
            String str = savedState.contentText;
            if (str == null) {
                str = "";
            }
            setText(str);
            Editable text = getText();
            if (text != null && arrayList != null) {
                restoreTokenSpansFromState(text, arrayList, savedState.tokenStarts, savedState.tokenEnds);
                setSelection(text.length());
            }
            this.internalEditInProgress = false;
            this.savingState = false;
            addListeners();
            if (isFocused() || !this.allowCollapse) {
                return;
            }
            post(new MessagingController.AnonymousClass1(7, this));
        } catch (Throwable th) {
            this.internalEditInProgress = false;
            this.savingState = false;
            addListeners();
            throw th;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        removeListeners();
        this.savingState = true;
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        int i = 0;
        this.savingState = false;
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.allowCollapse = this.allowCollapse;
        savedState.performBestGuess = this.performBestGuess;
        savedState.tokenizer = this.tokenizer;
        CharSequence contentText = getContentText();
        savedState.contentText = contentText == null ? "" : contentText.toString();
        Spanned spanned = this.hiddenContent;
        if (spanned == null) {
            spanned = getText();
        }
        TokenImageSpan[] tokenImageSpanArr = spanned == null ? new TokenImageSpan[0] : (TokenImageSpan[]) spanned.getSpans(0, spanned.length(), TokenImageSpan.class);
        if (spanned != null) {
            Arrays.sort(tokenImageSpanArr, new TokenCompleteTextView$$ExternalSyntheticLambda0(i, spanned));
        }
        savedState.tokenStarts = new int[tokenImageSpanArr.length];
        savedState.tokenEnds = new int[tokenImageSpanArr.length];
        ArrayList arrayList = new ArrayList(tokenImageSpanArr.length);
        for (int i2 = 0; i2 < tokenImageSpanArr.length; i2++) {
            TokenImageSpan tokenImageSpan = tokenImageSpanArr[i2];
            savedState.tokenStarts[i2] = spanned.getSpanStart(tokenImageSpan);
            savedState.tokenEnds[i2] = spanned.getSpanEnd(tokenImageSpan);
            arrayList.add(tokenImageSpan.token);
        }
        Class<?> cls = getClass();
        while (!cls.getSuperclass().equals(TokenCompleteTextView.class)) {
            cls = cls.getSuperclass();
        }
        Type genericSuperclass = cls.getGenericSuperclass();
        Class cls2 = genericSuperclass instanceof ParameterizedType ? (Class) ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0] : Object.class;
        if (Parcelable.class.isAssignableFrom(cls2)) {
            savedState.parcelableClassName = cls2.getName();
            savedState.baseObjects = arrayList;
        } else {
            savedState.parcelableClassName = "Serializable";
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int[] iArr = new int[arrayList.size()];
            int[] iArr2 = new int[arrayList.size()];
            int i3 = 0;
            while (i < arrayList.size()) {
                Object obj = arrayList.get(i);
                if (obj instanceof Serializable) {
                    arrayList2.add((Serializable) obj);
                    iArr[i3] = savedState.tokenStarts[i];
                    iArr2[i3] = savedState.tokenEnds[i];
                    i3++;
                }
                i++;
            }
            savedState.baseObjects = arrayList2;
            savedState.tokenStarts = Arrays.copyOf(iArr, i3);
            savedState.tokenEnds = Arrays.copyOf(iArr2, i3);
            if (i3 != arrayList.size()) {
                Log.e("TokenAutoComplete", "Some tokens not Serializable/Parcelable; state restore may be incorrect");
            }
        }
        addListeners();
        return savedState;
    }

    @Override // android.widget.TextView
    public final void onSelectionChanged(int i, int i2) {
        Editable text = getText();
        if (text != null) {
            for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(i, i, TokenImageSpan.class)) {
                int spanEnd = text.getSpanEnd(tokenImageSpan);
                if (i <= spanEnd && text.getSpanStart(tokenImageSpan) < i) {
                    if (spanEnd == text.length()) {
                        setSelection(spanEnd);
                        return;
                    } else {
                        setSelection(spanEnd + 1);
                        return;
                    }
                }
            }
        }
        super.onSelectionChanged(i, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Editable text = getText();
        Layout layout = getLayout();
        if (text == null || layout == null) {
            return super.onTouchEvent(motionEvent);
        }
        float x = (motionEvent.getX() - getTotalPaddingLeft()) + getScrollX();
        float y = (motionEvent.getY() - getTotalPaddingTop()) + getScrollY();
        int actionMasked = motionEvent.getActionMasked();
        TokenImageSpan tokenImageSpan = null;
        if (actionMasked == 0) {
            if (x >= 0.0f && y >= 0.0f && y <= layout.getHeight()) {
                int lineForVertical = layout.getLineForVertical((int) y);
                float min = Math.min(layout.getLineLeft(lineForVertical), layout.getLineRight(lineForVertical));
                float max = Math.max(layout.getLineLeft(lineForVertical), layout.getLineRight(lineForVertical));
                if (x >= min && x <= max) {
                    int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, x);
                    int i = Integer.MIN_VALUE;
                    for (TokenImageSpan tokenImageSpan2 : (TokenImageSpan[]) text.getSpans(Math.max(0, offsetForHorizontal - 1), Math.min(text.length(), offsetForHorizontal + 1), TokenImageSpan.class)) {
                        int spanStart = text.getSpanStart(tokenImageSpan2);
                        if (spanStart > i && isTouchInsideSpan(text, layout, tokenImageSpan2, x, y)) {
                            tokenImageSpan = tokenImageSpan2;
                            i = spanStart;
                        }
                    }
                }
            }
            this.pressedTokenSpan = tokenImageSpan;
            if (tokenImageSpan == null) {
                return super.onTouchEvent(motionEvent);
            }
            if (!isFocused()) {
                this.suppressImeOnNextFocus = true;
                requestFocusFromTouch();
            }
        } else {
            if (actionMasked == 1) {
                TokenImageSpan tokenImageSpan3 = this.pressedTokenSpan;
                if (tokenImageSpan3 == null) {
                    return super.onTouchEvent(motionEvent);
                }
                if (isTouchInsideSpan(text, layout, tokenImageSpan3, x, y)) {
                    RecipientSelectView.RecipientTokenSpan recipientTokenSpan = (RecipientSelectView.RecipientTokenSpan) this.pressedTokenSpan;
                    RecipientSelectView recipientSelectView = RecipientSelectView.this;
                    RecipientSelectView.Recipient recipient = recipientTokenSpan.token;
                    if (recipientSelectView.loaderManager != null) {
                        ((InputMethodManager) recipientSelectView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(recipientSelectView.getWindowToken(), 0);
                        recipientSelectView.alternatesPopupRecipient = recipient;
                        recipientSelectView.loaderManager.restartLoader(1, null, recipientSelectView);
                    }
                }
                this.pressedTokenSpan = null;
                return true;
            }
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    return super.onTouchEvent(motionEvent);
                }
                if (this.pressedTokenSpan == null) {
                    return super.onTouchEvent(motionEvent);
                }
                this.pressedTokenSpan = null;
                return true;
            }
            TokenImageSpan tokenImageSpan4 = this.pressedTokenSpan;
            if (tokenImageSpan4 == null) {
                return super.onTouchEvent(motionEvent);
            }
            if (!isTouchInsideSpan(text, layout, tokenImageSpan4, x, y)) {
                this.pressedTokenSpan = null;
                return true;
            }
        }
        return true;
    }

    public final void performCollapse(boolean z) {
        float f;
        SpannableStringBuilder spannableStringBuilder;
        SpannableStringBuilder spannableStringBuilder2;
        this.internalEditInProgress = true;
        if (z || getObjects().size() <= 1) {
            SpannableStringBuilder spannableStringBuilder3 = this.hiddenContent;
            if (spannableStringBuilder3 != null) {
                setText(spannableStringBuilder3);
                SpannableStringBuilder spannableStringBuilder4 = this.hiddenContent;
                TextUtils.copySpansFrom(spannableStringBuilder4, 0, spannableStringBuilder4.length(), TokenImageSpan.class, getText(), 0);
                this.hiddenContent = null;
                final boolean isCursorVisible = isCursorVisible();
                setCursorVisible(false);
                post(new Runnable() { // from class: com.tokenautocomplete.TokenCompleteTextView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = TokenCompleteTextView.$r8$clinit;
                        TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                        Editable text = tokenCompleteTextView.getText();
                        if (text != null) {
                            tokenCompleteTextView.setSelection(text.length());
                        }
                        tokenCompleteTextView.setCursorVisible(isCursorVisible);
                    }
                });
                if (((TokenSpanWatcher[]) getText().getSpans(0, getText().length(), TokenSpanWatcher.class)).length == 0) {
                    getText().setSpan(this.spanWatcher, 0, getText().length(), 18);
                }
            }
        } else {
            Editable text = getText();
            if (text != null && this.hiddenContent == null && this.lastLayout != null) {
                text.removeSpan(this.spanWatcher);
                CountSpan countSpan = this.countSpan;
                int size = getObjects().size();
                TextPaint paint = this.lastLayout.getPaint();
                float width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                if (countSpan != null) {
                    countSpan.setCount(size);
                    String str = countSpan.countText;
                    f = Layout.getDesiredWidth(str, 0, str.length(), paint);
                } else {
                    f = 0.0f;
                }
                SpanUtils$EllipsizeCallback spanUtils$EllipsizeCallback = new SpanUtils$EllipsizeCallback();
                spanUtils$EllipsizeCallback.start = 0;
                spanUtils$EllipsizeCallback.end = 0;
                CharSequence ellipsize = TextUtils.ellipsize(text, paint, width - f, TextUtils.TruncateAt.END, false, spanUtils$EllipsizeCallback);
                SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(ellipsize);
                if (ellipsize instanceof Spanned) {
                    TextUtils.copySpansFrom((Spanned) ellipsize, 0, ellipsize.length(), Object.class, spannableStringBuilder5, 0);
                    spannableStringBuilder = spannableStringBuilder5;
                } else {
                    spannableStringBuilder = spannableStringBuilder5;
                }
                if (spanUtils$EllipsizeCallback.start != spanUtils$EllipsizeCallback.end) {
                    if (countSpan != null) {
                        countSpan.setCount(size - ((TokenImageSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), TokenImageSpan.class)).length);
                        spannableStringBuilder.replace(spanUtils$EllipsizeCallback.start, spannableStringBuilder.length(), (CharSequence) countSpan.countText);
                        spannableStringBuilder.setSpan(countSpan, spanUtils$EllipsizeCallback.start, spannableStringBuilder.length(), 33);
                    }
                    spannableStringBuilder2 = spannableStringBuilder;
                } else {
                    spannableStringBuilder2 = null;
                }
                if (spannableStringBuilder2 != null) {
                    this.hiddenContent = new SpannableStringBuilder(text);
                    setText(spannableStringBuilder2);
                    TextUtils.copySpansFrom(spannableStringBuilder2, 0, spannableStringBuilder2.length(), TokenImageSpan.class, getText(), 0);
                    TextUtils.copySpansFrom(text, 0, this.hiddenContent.length(), TokenImageSpan.class, this.hiddenContent, 0);
                    SpannableStringBuilder spannableStringBuilder6 = this.hiddenContent;
                    spannableStringBuilder6.setSpan(this.spanWatcher, 0, spannableStringBuilder6.length(), 18);
                } else {
                    getText().setSpan(this.spanWatcher, 0, getText().length(), 18);
                }
            }
        }
        this.internalEditInProgress = false;
    }

    @Override // android.widget.AutoCompleteTextView
    public void performCompletion() {
        Object obj;
        if ((getAdapter() != null && getListSelection() != -1) || !enoughToFilter()) {
            super.performCompletion();
            return;
        }
        if (getAdapter() == null || getAdapter().getCount() <= 0 || !this.performBestGuess) {
            List parseRecipients = ((RecipientSelectView) this).parseRecipients(currentCompletionText());
            obj = !parseRecipients.isEmpty() ? (RecipientSelectView.Recipient) parseRecipients.get(0) : null;
        } else {
            obj = getAdapter().getItem(0);
        }
        this.selectedObject = obj;
        replaceText("");
    }

    public final void redrawTokens() {
        Editable text = getText();
        if (text == null) {
            return;
        }
        int length = text.length();
        if (((DummySpan[]) text.getSpans(0, length, DummySpan.class)).length > 0) {
            text.removeSpan(DummySpan.INSTANCE);
        } else {
            text.setSpan(DummySpan.INSTANCE, 0, length, 18);
        }
    }

    public final void removeListeners() {
        Editable text = getText();
        if (text != null) {
            for (TokenSpanWatcher tokenSpanWatcher : (TokenSpanWatcher[]) text.getSpans(0, text.length(), TokenSpanWatcher.class)) {
                text.removeSpan(tokenSpanWatcher);
            }
            removeTextChangedListener(this.textWatcher);
        }
    }

    public final void removeObjectSync(Object obj) {
        ArrayList arrayList = new ArrayList();
        SpannableStringBuilder spannableStringBuilder = this.hiddenContent;
        if (spannableStringBuilder != null) {
            arrayList.add(spannableStringBuilder);
        }
        if (getText() != null) {
            arrayList.add(getText());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Editable editable = (Editable) it.next();
            for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) editable.getSpans(0, editable.length(), TokenImageSpan.class)) {
                if (tokenImageSpan.token.equals(obj)) {
                    removeSpan(editable, tokenImageSpan);
                }
            }
        }
        updateCountSpan();
    }

    public final void removeSpan(Editable editable, TokenImageSpan tokenImageSpan) {
        int spanEnd = editable.getSpanEnd(tokenImageSpan);
        if (spanEnd < editable.length() && editable.charAt(spanEnd) == ' ') {
            spanEnd++;
        }
        this.internalEditInProgress = true;
        editable.delete(editable.getSpanStart(tokenImageSpan), spanEnd);
        this.internalEditInProgress = false;
        if (!this.allowCollapse || isFocused()) {
            return;
        }
        updateCountSpan();
    }

    @Override // android.widget.AutoCompleteTextView
    public void replaceText(CharSequence charSequence) {
        clearComposingText();
        Object obj = this.selectedObject;
        if (obj == null || obj.toString().equals("")) {
            return;
        }
        RecipientSelectView.RecipientTokenSpan buildSpanForObject = buildSpanForObject(this.selectedObject);
        Editable text = getText();
        Range currentCandidateTokenRange = getCurrentCandidateTokenRange();
        int i = currentCandidateTokenRange.start;
        int i2 = currentCandidateTokenRange.end;
        String substring = TextUtils.substring(text, i, i2);
        if (substring.length() > 0) {
            this.lastCompletionText = substring;
        }
        if (text != null) {
            this.internalEditInProgress = true;
            if (buildSpanForObject == null) {
                text.replace(i, i2, "");
            } else {
                RecipientSelectView.Recipient recipient = buildSpanForObject.token;
                if (((RecipientSelectView) this).getObjects().contains(recipient)) {
                    text.replace(i, i2, "");
                    TokenListener tokenListener = this.listener;
                    if (tokenListener != null) {
                        tokenListener.onTokenIgnored(recipient);
                    }
                } else {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(((CharacterTokenizer) this.tokenizer).wrapTokenValue(recipient.address.toString()));
                    text.replace(i, i2, spannableStringBuilder);
                    text.setSpan(buildSpanForObject, i, spannableStringBuilder.length() + i, 33);
                    text.insert(spannableStringBuilder.length() + i, " ");
                }
            }
            this.internalEditInProgress = false;
        }
    }

    public final void restoreTokenSpansFromState(Editable editable, ArrayList arrayList, int[] iArr, int[] iArr2) {
        RecipientSelectView.RecipientTokenSpan buildSpanForObject;
        for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) editable.getSpans(0, editable.length(), TokenImageSpan.class)) {
            editable.removeSpan(tokenImageSpan);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        if (iArr == null || iArr2 == null || iArr.length != size || iArr2.length != size) {
            return;
        }
        for (int i = 0; i < size; i++) {
            int i2 = iArr[i];
            int i3 = iArr2[i];
            if (i2 >= 0 && i3 <= editable.length() && i2 < i3 && (buildSpanForObject = buildSpanForObject(arrayList.get(i))) != null) {
                editable.setSpan(buildSpanForObject, i2, i3, 33);
            }
        }
    }

    public void setHiddenContentForTest(SpannableStringBuilder spannableStringBuilder) {
        this.hiddenContent = spannableStringBuilder;
    }

    public void setTokenLimit(int i) {
        this.tokenLimit = i;
    }

    public void setTokenListener(TokenListener tokenListener) {
        this.listener = tokenListener;
    }

    public void setTokenizer(Tokenizer tokenizer) {
        this.tokenizer = tokenizer;
    }

    public final void updateCountSpan() {
        Editable text = getText();
        this.countSpan.setCount(getObjects().size() - ((TokenImageSpan[]) getText().getSpans(0, getText().length(), TokenImageSpan.class)).length);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.countSpan.countText);
        spannableStringBuilder.setSpan(this.countSpan, 0, spannableStringBuilder.length(), 33);
        this.internalEditInProgress = true;
        int spanStart = text.getSpanStart(this.countSpan);
        if (spanStart != -1) {
            text.replace(spanStart, text.getSpanEnd(this.countSpan), spannableStringBuilder);
        } else {
            text.append((CharSequence) spannableStringBuilder);
        }
        this.internalEditInProgress = false;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TokenTextWatcher implements TextWatcher {
        public ArrayList spansToRemove = new ArrayList();

        public TokenTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            ArrayList arrayList = new ArrayList(this.spansToRemove);
            this.spansToRemove.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                TokenImageSpan tokenImageSpan = (TokenImageSpan) it.next();
                if (editable.getSpanStart(tokenImageSpan) != -1 && editable.getSpanEnd(tokenImageSpan) != -1) {
                    int i = TokenCompleteTextView.$r8$clinit;
                    TokenCompleteTextView.this.removeSpan(editable, tokenImageSpan);
                }
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i2 > 0) {
                TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                if (tokenCompleteTextView.getText() != null) {
                    Editable text = tokenCompleteTextView.getText();
                    int i4 = i2 + i;
                    TokenImageSpan[] tokenImageSpanArr = (TokenImageSpan[]) text.getSpans(i, i4, TokenImageSpan.class);
                    ArrayList arrayList = new ArrayList();
                    for (TokenImageSpan tokenImageSpan : tokenImageSpanArr) {
                        if (text.getSpanStart(tokenImageSpan) < i4 && i < text.getSpanEnd(tokenImageSpan)) {
                            arrayList.add(tokenImageSpan);
                        }
                    }
                    this.spansToRemove = arrayList;
                }
            }
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TokenSpanWatcher implements SpanWatcher {
        public TokenSpanWatcher() {
        }

        @Override // android.text.SpanWatcher
        public final void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
            if (obj instanceof TokenImageSpan) {
                TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                if (tokenCompleteTextView.savingState) {
                    return;
                }
                TokenImageSpan tokenImageSpan = (TokenImageSpan) obj;
                if (!tokenCompleteTextView.isFocused() && tokenCompleteTextView.allowCollapse) {
                    tokenCompleteTextView.performCollapse(false);
                }
                TokenListener tokenListener = tokenCompleteTextView.listener;
                if (tokenListener != null) {
                    tokenListener.onTokenAdded(tokenImageSpan.token);
                }
            }
        }

        @Override // android.text.SpanWatcher
        public final void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
            if (obj instanceof TokenImageSpan) {
                TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                if (tokenCompleteTextView.savingState) {
                    return;
                }
                TokenImageSpan tokenImageSpan = (TokenImageSpan) obj;
                TokenListener tokenListener = tokenCompleteTextView.listener;
                if (tokenListener != null) {
                    tokenListener.onTokenRemoved(tokenImageSpan.token);
                }
            }
        }

        @Override // android.text.SpanWatcher
        public final void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
        }
    }
}
