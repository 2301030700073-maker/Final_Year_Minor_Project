package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.Editable;
import android.text.TextUtils;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.core.os.BundleKt;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentViewBehavior;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.TextViewOnReceiveContentListener;
import androidx.core.widget.TintableCompoundDrawablesView;
import coil3.memory.MemoryCacheService;
import kotlin.math.MathKt;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AppCompatEditText extends EditText implements OnReceiveContentViewBehavior, TintableCompoundDrawablesView {
    public final AppCompatProgressBarHelper mAppCompatEmojiEditTextHelper;
    public final RulerTrackingMap mBackgroundTintHelper;
    public final TextViewOnReceiveContentListener mDefaultOnReceiveContentListener;
    public SuperCaller mSuperCaller;
    public final AppCompatProgressBarHelper mTextClassifierHelper;
    public final AppCompatTextHelper mTextHelper;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SuperCaller {
        public SuperCaller() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintContextWrapper.wrap(context);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        RulerTrackingMap rulerTrackingMap = new RulerTrackingMap(this);
        this.mBackgroundTintHelper = rulerTrackingMap;
        rulerTrackingMap.loadFromAttributes(attributeSet, i);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.mTextHelper = appCompatTextHelper;
        appCompatTextHelper.loadFromAttributes(attributeSet, i);
        appCompatTextHelper.applyCompoundDrawablesTints();
        AppCompatProgressBarHelper appCompatProgressBarHelper = new AppCompatProgressBarHelper();
        appCompatProgressBarHelper.mView = this;
        this.mTextClassifierHelper = appCompatProgressBarHelper;
        this.mDefaultOnReceiveContentListener = new TextViewOnReceiveContentListener();
        AppCompatProgressBarHelper appCompatProgressBarHelper2 = new AppCompatProgressBarHelper(this);
        this.mAppCompatEmojiEditTextHelper = appCompatProgressBarHelper2;
        appCompatProgressBarHelper2.loadFromAttributes(attributeSet, i);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean isFocusable = super.isFocusable();
        boolean isClickable = super.isClickable();
        boolean isLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListener2 = appCompatProgressBarHelper2.getKeyListener(keyListener);
        if (keyListener2 == keyListener) {
            return;
        }
        super.setKeyListener(keyListener2);
        super.setRawInputType(inputType);
        super.setFocusable(isFocusable);
        super.setClickable(isClickable);
        super.setLongClickable(isLongClickable);
    }

    private SuperCaller getSuperCaller() {
        if (this.mSuperCaller == null) {
            this.mSuperCaller = new SuperCaller();
        }
        return this.mSuperCaller;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.applySupportBackgroundTint();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return MathKt.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            return rulerTrackingMap.getSupportBackgroundTintList();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            return rulerTrackingMap.getSupportBackgroundTintMode();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.getCompoundDrawableTintList();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.getCompoundDrawableTintMode();
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        AppCompatProgressBarHelper appCompatProgressBarHelper;
        if (Build.VERSION.SDK_INT >= 28 || (appCompatProgressBarHelper = this.mTextClassifierHelper) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) appCompatProgressBarHelper.mSampleTile;
        return textClassifier == null ? AppCompatTextClassifierHelper$Api26Impl.getTextClassifier((TextView) appCompatProgressBarHelper.mView) : textClassifier;
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        String[] onReceiveContentMimeTypes;
        InputConnectionWrapper inputConnectionWrapper;
        final InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.getClass();
        int i = Build.VERSION.SDK_INT;
        int i2 = 1;
        if (i < 30 && onCreateInputConnection != null) {
            CharSequence text = getText();
            if (i >= 30) {
                EditorInfoCompat.Api30Impl.setInitialSurroundingSubText(editorInfo, text);
            } else {
                text.getClass();
                if (i >= 30) {
                    EditorInfoCompat.Api30Impl.setInitialSurroundingSubText(editorInfo, text);
                } else {
                    int i3 = editorInfo.initialSelStart;
                    int i4 = editorInfo.initialSelEnd;
                    int i5 = i3 > i4 ? i4 : i3;
                    if (i3 <= i4) {
                        i3 = i4;
                    }
                    int length = text.length();
                    if (i5 < 0 || i3 > length) {
                        EditorInfoCompat.setSurroundingText(editorInfo, null, 0, 0);
                    } else {
                        int i6 = editorInfo.inputType & 4095;
                        if (i6 == 129 || i6 == 225 || i6 == 18) {
                            EditorInfoCompat.setSurroundingText(editorInfo, null, 0, 0);
                        } else if (length <= 2048) {
                            EditorInfoCompat.setSurroundingText(editorInfo, text, i5, i3);
                        } else {
                            int i7 = i3 - i5;
                            int i8 = i7 > 1024 ? 0 : i7;
                            int i9 = 2048 - i8;
                            int min = Math.min(text.length() - i3, i9 - Math.min(i5, (int) (i9 * 0.8d)));
                            int min2 = Math.min(i5, i9 - min);
                            int i10 = i5 - min2;
                            if (Character.isLowSurrogate(text.charAt(i10))) {
                                i10++;
                                min2--;
                            }
                            if (Character.isHighSurrogate(text.charAt((i3 + min) - 1))) {
                                min--;
                            }
                            int i11 = min2 + i8;
                            EditorInfoCompat.setSurroundingText(editorInfo, i8 != i7 ? TextUtils.concat(text.subSequence(i10, i10 + min2), text.subSequence(i3, min + i3)) : text.subSequence(i10, i11 + min + i10), min2, i11);
                        }
                    }
                }
            }
        }
        BundleKt.onCreateInputConnection(onCreateInputConnection, editorInfo, this);
        if (onCreateInputConnection != null && i <= 30 && (onReceiveContentMimeTypes = ViewCompat.getOnReceiveContentMimeTypes(this)) != null) {
            EditorInfoCompat.setContentMimeTypes(editorInfo, onReceiveContentMimeTypes);
            final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, i2);
            if (i >= 25) {
                inputConnectionWrapper = new InputConnectionWrapper(onCreateInputConnection) { // from class: androidx.core.view.inputmethod.InputConnectionCompat$1
                    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
                    public final boolean commitContent(InputContentInfo inputContentInfo, int i12, Bundle bundle) {
                        MemoryCacheService memoryCacheService = null;
                        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
                            memoryCacheService = new MemoryCacheService(new InputContentInfoCompat$InputContentInfoCompatApi25Impl(inputContentInfo));
                        }
                        if (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.onCommitContent(memoryCacheService, i12, bundle)) {
                            return true;
                        }
                        return super.commitContent(inputContentInfo, i12, bundle);
                    }
                };
            } else if (EditorInfoCompat.getContentMimeTypes(editorInfo).length != 0) {
                inputConnectionWrapper = new InputConnectionWrapper(onCreateInputConnection) { // from class: androidx.core.view.inputmethod.InputConnectionCompat$2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
                    public final boolean performPrivateCommand(String str, Bundle bundle) {
                        Object[] objArr;
                        ResultReceiver resultReceiver;
                        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02 = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
                        boolean z = false;
                        z = false;
                        z = false;
                        z = false;
                        if (bundle != null) {
                            if (TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                                objArr = false;
                            } else if (TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                                objArr = true;
                            }
                            try {
                                resultReceiver = (ResultReceiver) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
                            } catch (Throwable th) {
                                th = th;
                                resultReceiver = null;
                            }
                            try {
                                Uri uri = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
                                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
                                Uri uri2 = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
                                int i12 = bundle.getInt(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
                                Bundle bundle2 = (Bundle) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
                                if (uri != null && clipDescription != null) {
                                    MemoryCacheService memoryCacheService = new MemoryCacheService();
                                    if (Build.VERSION.SDK_INT >= 25) {
                                        memoryCacheService.imageLoader = new InputContentInfoCompat$InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
                                    } else {
                                        memoryCacheService.imageLoader = new ProcessFinisher(18, uri, clipDescription, uri2);
                                    }
                                    z = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02.onCommitContent(memoryCacheService, i12, bundle2);
                                }
                                if (resultReceiver != null) {
                                    resultReceiver.send(z ? 1 : 0, null);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (resultReceiver != null) {
                                    resultReceiver.send(0, null);
                                }
                                throw th;
                            }
                        }
                        if (z) {
                            return true;
                        }
                        return super.performPrivateCommand(str, bundle);
                    }
                };
            }
            onCreateInputConnection = inputConnectionWrapper;
        }
        return this.mAppCompatEmojiEditTextHelper.onCreateInputConnection(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i < 31 && i >= 24 && dragEvent.getLocalState() == null && ViewCompat.getOnReceiveContentMimeTypes(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                z = AppCompatReceiveContentHelper$OnDropApi24Impl.onDropForTextView(dragEvent, this, activity);
            }
        }
        if (z) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // androidx.core.view.OnReceiveContentViewBehavior
    public final ContentInfoCompat onReceiveContent(ContentInfoCompat contentInfoCompat) {
        this.mDefaultOnReceiveContentListener.getClass();
        return TextViewOnReceiveContentListener.onReceiveContent(this, contentInfoCompat);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        ContentInfoCompat.BuilderCompat builderCompat;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31 || ViewCompat.getOnReceiveContentMimeTypes(this) == null || !(i == 16908322 || i == 16908337)) {
            return super.onTextContextMenuItem(i);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            if (i2 >= 31) {
                builderCompat = new ScrollCapture(primaryClip, 1);
            } else {
                ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl();
                compatImpl.mClip = primaryClip;
                compatImpl.mSource = 1;
                builderCompat = compatImpl;
            }
            builderCompat.setFlags(i == 16908322 ? 0 : 1);
            ViewCompat.performReceiveContent(this, builderCompat.build());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.onSetBackgroundDrawable();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.onSetBackgroundResource(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(MathKt.wrapCustomSelectionActionModeCallback(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.mAppCompatEmojiEditTextHelper.setEnabled(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.mAppCompatEmojiEditTextHelper.getKeyListener(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        appCompatTextHelper.setCompoundDrawableTintList(colorStateList);
        appCompatTextHelper.applyCompoundDrawablesTints();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        appCompatTextHelper.setCompoundDrawableTintMode(mode);
        appCompatTextHelper.applyCompoundDrawablesTints();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.onSetTextAppearance(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        AppCompatProgressBarHelper appCompatProgressBarHelper;
        if (Build.VERSION.SDK_INT >= 28 || (appCompatProgressBarHelper = this.mTextClassifierHelper) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            appCompatProgressBarHelper.mSampleTile = textClassifier;
        }
    }
}
