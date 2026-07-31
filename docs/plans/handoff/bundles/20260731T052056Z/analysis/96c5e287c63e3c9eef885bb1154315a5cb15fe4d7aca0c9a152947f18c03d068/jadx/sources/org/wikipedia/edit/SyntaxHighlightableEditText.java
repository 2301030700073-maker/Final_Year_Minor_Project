package org.wikipedia.edit;

import android.content.ClipData;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ContentInfo;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticApiModelOutline0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R*\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "Landroid/widget/EditText;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/text/Editable;", "getText", "()Landroid/text/Editable;", "Landroid/view/View;", "scrollView", "Landroid/view/View;", "getScrollView", "()Landroid/view/View;", "setScrollView", "(Landroid/view/View;)V", "Landroid/view/inputmethod/InputConnection;", "inputConnection", "Landroid/view/inputmethod/InputConnection;", "getInputConnection", "()Landroid/view/inputmethod/InputConnection;", "setInputConnection", "(Landroid/view/inputmethod/InputConnection;)V", "", "value", "showLineNumbers", "Z", "getShowLineNumbers", "()Z", "setShowLineNumbers", "(Z)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class SyntaxHighlightableEditText extends EditText {
    public static final /* synthetic */ int $r8$clinit = 0;
    public int[] actualLineFromRenderedLine;
    public boolean allowScrollToCursor;
    public final Rect gutterRect;
    public InputConnection inputConnection;
    public final boolean isRtl;
    public final Paint lineNumberBackgroundPaint;
    public final int lineNumberGapWidth;
    public final TextPaint lineNumberPaint;
    public final int paddingWithLineNumbers;
    public final int paddingWithoutLineNumbers;
    public int prevLineCount;
    public View scrollView;
    public boolean showLineNumbers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyntaxHighlightableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.prevLineCount = -1;
        TextPaint textPaint = new TextPaint();
        this.lineNumberPaint = textPaint;
        Paint paint = new Paint();
        this.lineNumberBackgroundPaint = paint;
        boolean z = getResources().getConfiguration().getLayoutDirection() == 1;
        this.isRtl = z;
        int roundedDpToPx = Okio__OkioKt.roundedDpToPx(12.0f);
        this.paddingWithoutLineNumbers = roundedDpToPx;
        int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(36.0f);
        this.paddingWithLineNumbers = roundedDpToPx2;
        this.lineNumberGapWidth = Okio__OkioKt.roundedDpToPx(8.0f);
        this.gutterRect = new Rect();
        this.allowScrollToCursor = true;
        if (isInEditMode()) {
            return;
        }
        setPaddingRelative(this.showLineNumbers ? roundedDpToPx2 : roundedDpToPx, getPaddingTop(), getPaddingEnd(), getPaddingBottom());
        textPaint.setAntiAlias(true);
        textPaint.setTextAlign(z ? Paint.Align.LEFT : Paint.Align.RIGHT);
        textPaint.setTextSize(getTextSize() * 0.8f);
        Context context2 = getContext();
        context2.getClass();
        textPaint.setColor(Cache.Companion.getThemedColor(context2, R.attr.placeholder_color));
        Context context3 = getContext();
        context3.getClass();
        paint.setColor(Cache.Companion.getThemedColor(context3, R.attr.border_color));
    }

    public final InputConnection getInputConnection() {
        return this.inputConnection;
    }

    public final View getScrollView() {
        return this.scrollView;
    }

    public final boolean getShowLineNumbers() {
        return this.showLineNumbers;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        Editable text = Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
        if (text != null) {
            return text;
        }
        Editable newEditable = Editable.Factory.getInstance().newEditable("");
        newEditable.getClass();
        return newEditable;
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.getClass();
        this.inputConnection = super.onCreateInputConnection(editorInfo);
        boolean z = (getInputType() & 131072) == 131072;
        int i = editorInfo.imeOptions;
        if ((i & 6) == 6 && z) {
            editorInfo.imeOptions = (-1073741825) & i;
        }
        return this.inputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int lineCount;
        canvas.getClass();
        int i = 0;
        if (this.prevLineCount != getLineCount()) {
            int lineCount2 = getLineCount();
            this.prevLineCount = lineCount2;
            Layout layout = getLayout();
            layout.getClass();
            String obj = getText().toString();
            boolean[] zArr = new boolean[lineCount2];
            if (obj == null || obj.length() == 0 || lineCount2 == 0) {
                this.actualLineFromRenderedLine = new int[]{1};
            } else {
                boolean[] zArr2 = new boolean[lineCount2];
                this.actualLineFromRenderedLine = new int[lineCount2];
                for (int i2 = 0; i2 < lineCount2; i2++) {
                    boolean z = obj.charAt(layout.getLineEnd(i2) - 1) == '\n';
                    zArr[i2] = z;
                    if (z) {
                        int i3 = i2 - 1;
                        while (i3 >= 0 && !zArr[i3]) {
                            i3--;
                        }
                        zArr2[i3 + 1] = true;
                    }
                }
                int i4 = lineCount2 - 2;
                while (i4 >= 0 && !zArr[i4]) {
                    i4--;
                }
                zArr2[i4 + 1] = true;
                int i5 = 0;
                for (int i6 = 0; i6 < lineCount2; i6++) {
                    if (zArr2[i6]) {
                        i5++;
                    }
                    int[] iArr = this.actualLineFromRenderedLine;
                    if (iArr == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("actualLineFromRenderedLine");
                        throw null;
                    }
                    iArr[i6] = i5;
                }
            }
        }
        if (this.showLineNumbers && getLayout() != null) {
            if (this.scrollView != null) {
                Layout layout2 = getLayout();
                View view = this.scrollView;
                view.getClass();
                i = layout2.getLineForVertical(view.getScrollY());
            }
            if (this.scrollView != null) {
                Layout layout3 = getLayout();
                View view2 = this.scrollView;
                view2.getClass();
                int scrollY = view2.getScrollY();
                View view3 = this.scrollView;
                view3.getClass();
                lineCount = layout3.getLineForVertical(view3.getHeight() + scrollY);
            } else {
                lineCount = getLayout().getLineCount() - 1;
            }
            canvas.drawRect(this.gutterRect, this.lineNumberBackgroundPaint);
            if (i <= lineCount) {
                int i7 = -1;
                while (true) {
                    int[] iArr2 = this.actualLineFromRenderedLine;
                    if (iArr2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("actualLineFromRenderedLine");
                        throw null;
                    }
                    int i8 = iArr2[i];
                    if (i7 != i8) {
                        String valueOf = String.valueOf(i8);
                        boolean z2 = this.isRtl;
                        int i9 = this.lineNumberGapWidth;
                        int i10 = this.paddingWithLineNumbers;
                        canvas.drawText(valueOf, z2 ? (getWidth() - i10) + i9 : i10 - i9, getLayout().getLineBottom(i), this.lineNumberPaint);
                        i7 = i8;
                    }
                    if (i == lineCount) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = this.lineNumberGapWidth;
        int i6 = this.paddingWithLineNumbers;
        boolean z2 = this.isRtl;
        Rect rect = this.gutterRect;
        if (!z2) {
            rect.set(0, 0, i6 - (i5 / 2), getHeight());
        } else {
            rect.set((i5 / 2) + (getWidth() - i6), 0, getWidth(), getHeight());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final ContentInfo onReceiveContent(ContentInfo contentInfo) {
        contentInfo.getClass();
        try {
            ClipData clip = contentInfo.getClip();
            clip.getClass();
            String obj = clip.getItemAt(clip.getItemCount() - 1).coerceToText(getContext()).toString();
            TypefaceCompat$$ExternalSyntheticApiModelOutline0.m$1();
            ContentInfo build = new ContentInfo.Builder(contentInfo).setClip(ClipData.newPlainText(null, obj)).build();
            build.getClass();
            contentInfo = build;
        } catch (Exception e) {
            L.e(e);
        }
        return super.onReceiveContent(contentInfo);
    }

    @Override // android.view.View
    public final boolean requestRectangleOnScreen(Rect rect) {
        if (this.allowScrollToCursor) {
            return super.requestRectangleOnScreen(rect);
        }
        return false;
    }

    public final void setInputConnection(InputConnection inputConnection) {
        this.inputConnection = inputConnection;
    }

    public final void setScrollView(View view) {
        this.scrollView = view;
    }

    public final void setShowLineNumbers(boolean z) {
        this.showLineNumbers = z;
        setPaddingRelative(z ? this.paddingWithLineNumbers : this.paddingWithoutLineNumbers, getPaddingTop(), getPaddingEnd(), getPaddingBottom());
    }
}
