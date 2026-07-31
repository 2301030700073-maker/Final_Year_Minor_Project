package org.schabi.newpipe.util.text;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.transition.Transition;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class UrlLongPressClickableSpan extends LongPressClickableSpan {
    public final Context context;
    public final String url;

    public UrlLongPressClickableSpan(Context context, String str) {
        this.context = context;
        this.url = str;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Pattern pattern = InternalUrlsHandler.AMPERSAND_TIMESTAMP_PATTERN;
        String str = this.url;
        Matcher matcher = pattern.matcher(str);
        boolean matches = matcher.matches();
        Context context = this.context;
        boolean z = false;
        if (matches) {
            String group = matcher.group(1);
            int parseInt = matcher.group(2) == null ? -1 : Integer.parseInt(matcher.group(2));
            try {
                StreamingService serviceByUrl = Utility.getServiceByUrl(group);
                StreamingService.LinkType linkTypeByUrl = serviceByUrl.getLinkTypeByUrl(group);
                if (linkTypeByUrl != StreamingService.LinkType.NONE) {
                    if (linkTypeByUrl != StreamingService.LinkType.STREAM || parseInt == -1) {
                        Intent intent = new Intent(context, (Class<?>) RouterActivity.class);
                        intent.setData(Uri.parse(group));
                        context.startActivity(intent);
                        z = true;
                    } else {
                        z = InternalUrlsHandler.playOnPopup(context, group, serviceByUrl, parseInt);
                    }
                }
            } catch (ExtractionException unused) {
            }
        }
        if (z) {
            return;
        }
        Transition.Impl26.openUrlInApp(context, str);
    }

    @Override // org.schabi.newpipe.util.text.LongPressClickableSpan
    public final void onLongClick(View view) {
        Transition.Impl26.copyToClipboard(this.context, this.url);
    }
}
