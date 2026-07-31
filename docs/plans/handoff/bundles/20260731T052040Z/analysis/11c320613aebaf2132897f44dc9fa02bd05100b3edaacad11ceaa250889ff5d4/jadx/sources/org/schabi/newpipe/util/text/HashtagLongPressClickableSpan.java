package org.schabi.newpipe.util.text;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.transition.Transition;
import org.schabi.newpipe.MainActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class HashtagLongPressClickableSpan extends LongPressClickableSpan {
    public final Context context;
    public final String parsedHashtag;
    public final int relatedInfoServiceId;

    public HashtagLongPressClickableSpan(Context context, int i, String str) {
        this.context = context;
        this.parsedHashtag = str;
        this.relatedInfoServiceId = i;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.putExtra("key_service_id", this.relatedInfoServiceId);
        intent.putExtra("key_search_string", this.parsedHashtag);
        intent.putExtra("key_open_search", true);
        context.startActivity(intent);
    }

    @Override // org.schabi.newpipe.util.text.LongPressClickableSpan
    public final void onLongClick(View view) {
        Transition.Impl26.copyToClipboard(this.context, this.parsedHashtag);
    }
}
