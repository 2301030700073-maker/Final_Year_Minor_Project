package org.schabi.newpipe.util.text;

import android.graphics.Paint;
import android.widget.TextView;
import com.google.android.exoplayer2.util.Log;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextEllipsizer {
    public Description content;
    public final float ellipsisWidthPx;
    public final int maxLines;
    public PrettyTime$$ExternalSyntheticLambda0 onContentChanged;
    public final Paint paintAtContentSize;
    public Consumer stateChangeListener;
    public String streamUrl;
    public StreamingService streamingService;
    public final TextView view;
    public final CompositeDisposable disposable = new CompositeDisposable();
    public boolean isEllipsized = false;
    public Boolean canBeEllipsized = null;

    public TextEllipsizer(TextView textView, int i, StreamingService streamingService) {
        Paint paint = new Paint();
        this.paintAtContentSize = paint;
        this.stateChangeListener = null;
        this.view = textView;
        this.maxLines = i;
        this.content = Description.EMPTY_DESCRIPTION;
        this.streamingService = streamingService;
        paint.setTextSize(textView.getTextSize());
        this.ellipsisWidthPx = paint.measureText("…");
    }

    public final void linkifyContentView(final Consumer consumer) {
        final boolean z = this.isEllipsized;
        CompositeDisposable compositeDisposable = this.disposable;
        compositeDisposable.clear();
        TextLinkifier.fromDescription(this.view, this.content, this.streamingService, this.streamUrl, compositeDisposable, new Consumer() { // from class: org.schabi.newpipe.util.text.TextEllipsizer$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void s(Object obj) {
                Consumer consumer2;
                consumer.s((TextView) obj);
                TextEllipsizer textEllipsizer = TextEllipsizer.this;
                boolean z2 = textEllipsizer.isEllipsized;
                if (z == z2 || (consumer2 = textEllipsizer.stateChangeListener) == null) {
                    return;
                }
                consumer2.s(Boolean.valueOf(z2));
            }

            public /* synthetic */ Consumer andThen(Consumer consumer2) {
                return Consumer$CC.$default$andThen(this, consumer2);
            }
        });
    }

    public final void toggle() {
        boolean z = this.isEllipsized;
        TextView textView = this.view;
        if (z) {
            textView.setMaxLines(Log.LOG_LEVEL_OFF);
            linkifyContentView(new TextEllipsizer$$ExternalSyntheticLambda0(this, 2));
        } else {
            textView.setMaxLines(Log.LOG_LEVEL_OFF);
            linkifyContentView(new TextEllipsizer$$ExternalSyntheticLambda0(this, 0));
        }
    }
}
