package org.wikipedia.databinding;

import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ItemSuggestedEditsRecentEditsBinding {
    public final WikiCardView containerView;
    public final MaterialButton diffText;
    public final GoneIfEmptyTextView summaryText;
    public final GoneIfEmptyTextView tagsText;
    public final TextView timeText;
    public final TextView titleText;
    public final MaterialButton userNameText;

    public ItemSuggestedEditsRecentEditsBinding(WikiCardView wikiCardView, MaterialButton materialButton, GoneIfEmptyTextView goneIfEmptyTextView, GoneIfEmptyTextView goneIfEmptyTextView2, TextView textView, TextView textView2, MaterialButton materialButton2) {
        this.containerView = wikiCardView;
        this.diffText = materialButton;
        this.summaryText = goneIfEmptyTextView;
        this.tagsText = goneIfEmptyTextView2;
        this.timeText = textView;
        this.titleText = textView2;
        this.userNameText = materialButton2;
    }
}
