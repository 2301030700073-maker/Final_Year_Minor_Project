package androidx.compose.ui.text.platform;

import android.text.TextPaint;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidTextPaint_androidKt {
    public static final ImmutableBool Falsey = new ImmutableBool(false);

    /* renamed from: drawParagraphs-7AXcY_I, reason: not valid java name */
    public static final void m666drawParagraphs7AXcY_I(MultiParagraph multiParagraph, Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i);
            paragraphInfo.paragraph.m624painthn5TExg(canvas, brush, f, shadow, textDecoration, drawStyle);
            canvas.translate(RecyclerView.DECELERATION_RATE, paragraphInfo.paragraph.getHeight());
        }
    }

    public static final boolean getHasEmojiCompat(TextStyle textStyle) {
        PlatformParagraphStyle platformParagraphStyle;
        PlatformTextStyle platformTextStyle = textStyle.platformStyle;
        EmojiSupportMatch emojiSupportMatch = (platformTextStyle == null || (platformParagraphStyle = platformTextStyle.paragraphStyle) == null) ? null : new EmojiSupportMatch(platformParagraphStyle.emojiSupportMatch);
        boolean z = false;
        if (emojiSupportMatch != null && emojiSupportMatch.value == 1) {
            z = true;
        }
        return !z;
    }

    public static final void setAlpha(TextPaint textPaint, float f) {
        if (Float.isNaN(f)) {
            return;
        }
        if (f < RecyclerView.DECELERATION_RATE) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        textPaint.setAlpha(Math.round(f * 255.0f));
    }
}
