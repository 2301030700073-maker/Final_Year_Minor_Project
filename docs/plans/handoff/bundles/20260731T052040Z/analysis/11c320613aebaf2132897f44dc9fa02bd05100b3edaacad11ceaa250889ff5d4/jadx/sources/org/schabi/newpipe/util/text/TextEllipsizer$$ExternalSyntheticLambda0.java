package org.schabi.newpipe.util.text;

import android.text.Layout;
import android.widget.TextView;
import com.google.android.exoplayer2.util.Log;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextEllipsizer$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TextEllipsizer f$0;

    public /* synthetic */ TextEllipsizer$$ExternalSyntheticLambda0(TextEllipsizer textEllipsizer, int i) {
        this.$r8$classId = i;
        this.f$0 = textEllipsizer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        TextEllipsizer textEllipsizer = this.f$0;
        switch (i) {
            case 0:
                int i2 = textEllipsizer.maxLines;
                TextView textView = textEllipsizer.view;
                CharSequence text = textView.getText();
                if (text == null || textView.getLineCount() <= i2) {
                    textEllipsizer.isEllipsized = false;
                } else {
                    String charSequence = text.toString();
                    Layout layout = textView.getLayout();
                    int i3 = i2 - 1;
                    float lineWidth = layout.getLineWidth(i3);
                    float width = layout.getWidth();
                    int lineStart = layout.getLineStart(i3);
                    int lineEnd = layout.getLineEnd(i3);
                    float f = 0.0f;
                    int i4 = lineEnd;
                    while ((lineWidth - f) + textEllipsizer.ellipsisWidthPx + 2.0f > width && i4 >= lineStart) {
                        i4--;
                        f = textEllipsizer.paintAtContentSize.measureText(charSequence.substring(i4, lineEnd));
                    }
                    while (i4 > 0 && Character.isWhitespace(charSequence.charAt(i4 - 1))) {
                        i4--;
                    }
                    textView.setText(charSequence.substring(0, i4).concat("…"));
                    textEllipsizer.isEllipsized = true;
                }
                textView.setMaxLines(i2);
                break;
            case 1:
                TextView textView2 = textEllipsizer.view;
                int maxLines = textView2.getMaxLines();
                textView2.setMaxLines(Log.LOG_LEVEL_OFF);
                textEllipsizer.canBeEllipsized = Boolean.valueOf(textView2.getLineCount() > textEllipsizer.maxLines);
                textView2.setMaxLines(maxLines);
                PrettyTime$$ExternalSyntheticLambda0 prettyTime$$ExternalSyntheticLambda0 = textEllipsizer.onContentChanged;
                if (prettyTime$$ExternalSyntheticLambda0 != null) {
                    prettyTime$$ExternalSyntheticLambda0.accept(textEllipsizer.canBeEllipsized);
                    break;
                }
                break;
            default:
                textEllipsizer.isEllipsized = false;
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
