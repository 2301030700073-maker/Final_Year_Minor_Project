package org.wikipedia.feed.onthisday;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import org.wikipedia.R;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayPagesViewHolder extends RecyclerView.ViewHolder {
    public final AppCompatActivity activity;
    public final FaceAndColorDetectImageView image;
    public final FrameLayout imageContainer;
    public PageSummary selectedPage;
    public final WikiSite wiki;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnThisDayPagesViewHolder(AppCompatActivity appCompatActivity, View view, WikiSite wikiSite) {
        super(view);
        wikiSite.getClass();
        this.activity = appCompatActivity;
        this.wiki = wikiSite;
        new View[]{view}[0].setOnContextClickListener(new DeviceUtil$$ExternalSyntheticLambda0());
        view.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(11, this));
        view.setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(1, this));
        View findViewById = view.findViewById(R.id.image_container);
        findViewById.getClass();
        this.imageContainer = (FrameLayout) findViewById;
        View findViewById2 = view.findViewById(R.id.image);
        findViewById2.getClass();
        this.image = (FaceAndColorDetectImageView) findViewById2;
    }
}
