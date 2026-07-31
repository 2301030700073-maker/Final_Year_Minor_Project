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
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentViewBehavior;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.TextViewOnReceiveContentListener;
import androidx.core.widget.TintableCompoundDrawablesView;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class AppCompatEditText extends EditText implements OnReceiveContentViewBehavior, TintableCompoundDrawablesView {
    public final AppCompatProgressBarHelper mAppCompatEmojiEditTextHelper;
    public final RulerTrackingMap mBackgroundTintHelper;
    public final TextViewOnReceiveContentListener mDefaultOnReceiveContentListener;
    public SuperCaller mSuperCaller;
    public final AppCompatProgressBarHelper mTextClassifierHelper;
    public final AppCompatTextHelper mTextHelper;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SuperCaller {
        public SuperCaller() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        TintContextWrapper.wrap(context);
        ThemeUtils.checkAppCompatTheme(getContext(), this);
        RulerTrackingMap rulerTrackingMap = new RulerTrackingMap(this);
        this.mBackgroundTintHelper = rulerTrackingMap;
        rulerTrackingMap.loadFromAttributes(attributeSet, R.attr.editTextStyle);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.mTextHelper = appCompatTextHelper;
        appCompatTextHelper.loadFromAttributes(attributeSet, R.attr.editTextStyle);
        appCompatTextHelper.applyCompoundDrawablesTints();
        AppCompatProgressBarHelper appCompatProgressBarHelper = new AppCompatProgressBarHelper();
        appCompatProgressBarHelper.mView = this;
        this.mTextClassifierHelper = appCompatProgressBarHelper;
        this.mDefaultOnReceiveContentListener = new TextViewOnReceiveContentListener();
        AppCompatProgressBarHelper appCompatProgressBarHelper2 = new AppCompatProgressBarHelper(this);
        this.mAppCompatEmojiEditTextHelper = appCompatProgressBarHelper2;
        appCompatProgressBarHelper2.loadFromAttributes(attributeSet, R.attr.editTextStyle);
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
        SuperCaller superCaller = this.mSuperCaller;
        if (superCaller != null) {
            return superCaller;
        }
        SuperCaller superCaller2 = new SuperCaller();
        this.mSuperCaller = superCaller2;
        return superCaller2;
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
        return UuidKt.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
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
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        String[] onReceiveContentMimeTypes;
        InputConnectionWrapper inputConnectionWrapper;
        final InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 && onCreateInputConnection != null) {
            EditorInfoCompat.setInitialSurroundingText(editorInfo, getText());
        }
        UtilsKt.onCreateInputConnection(onCreateInputConnection, editorInfo, this);
        if (onCreateInputConnection != null && i <= 30 && (onReceiveContentMimeTypes = ViewCompat.getOnReceiveContentMimeTypes(this)) != null) {
            EditorInfoCompat.setContentMimeTypes(editorInfo, onReceiveContentMimeTypes);
            final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(4, this);
            if (i >= 25) {
                inputConnectionWrapper = new InputConnectionWrapper(onCreateInputConnection) { // from class: androidx.core.view.inputmethod.InputConnectionCompat$1
                    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
                    public final boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
                        HintHandler hintHandler = null;
                        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
                            hintHandler = new HintHandler(18, new InputContentInfoCompat$InputContentInfoCompatApi25Impl(inputContentInfo));
                        }
                        if (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.onCommitContent(hintHandler, i2, bundle)) {
                            return true;
                        }
                        return super.commitContent(inputContentInfo, i2, bundle);
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
                                try {
                                    Uri uri = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
                                    ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
                                    Uri uri2 = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
                                    int i2 = bundle.getInt(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
                                    Bundle bundle2 = (Bundle) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
                                    if (uri != null && clipDescription != null) {
                                        z = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02.onCommitContent(new HintHandler(uri, clipDescription, uri2), i2, bundle2);
                                    }
                                    if (resultReceiver != null) {
                                        resultReceiver.send(z ? 1 : 0, null);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (resultReceiver != null) {
                                        resultReceiver.send(0, null);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                resultReceiver = null;
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
        return this.mDefaultOnReceiveContentListener.onReceiveContent(this, contentInfoCompat);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
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
                ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl(1);
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
        super.setCustomSelectionActionModeCallback(UuidKt.wrapCustomSelectionActionModeCallback(callback, this));
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
