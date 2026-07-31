package androidx.compose.ui.text.platform;

import android.text.TextPaint;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AndroidTextPaint_androidKt {
    public static final ImmutableBool Falsey = new ImmutableBool(false);

    public static final boolean access$getHasEmojiCompat(TextStyle textStyle) {
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
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        textPaint.setAlpha(Math.round(f * 255.0f));
    }
}
