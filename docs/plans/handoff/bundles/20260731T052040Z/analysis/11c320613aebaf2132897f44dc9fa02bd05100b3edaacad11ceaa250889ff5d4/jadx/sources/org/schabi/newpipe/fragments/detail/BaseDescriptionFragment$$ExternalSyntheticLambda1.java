package org.schabi.newpipe.fragments.detail;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.node.Owner;
import androidx.transition.Transition;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.function.Consumer;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor$$ExternalSyntheticLambda13;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseDescriptionFragment$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ BaseDescriptionFragment$$ExternalSyntheticLambda1(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                final BaseDescriptionFragment baseDescriptionFragment = (BaseDescriptionFragment) obj4;
                int i2 = BaseDescriptionFragment.$r8$clinit;
                ViewGroup viewGroup = (ChipGroup) ((TokenData) obj2).builder;
                Chip chip = (Chip) ((LayoutInflater) obj3).inflate(R.layout.chip, viewGroup, false);
                chip.setText((String) obj);
                chip.setOnClickListener(new BaseDescriptionFragment$$ExternalSyntheticLambda0(baseDescriptionFragment, 1));
                chip.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.schabi.newpipe.fragments.detail.BaseDescriptionFragment$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        int i3 = BaseDescriptionFragment.$r8$clinit;
                        Transition.Impl26.copyToClipboard(BaseDescriptionFragment.this.requireContext(), ((Chip) view).getText().toString());
                        return true;
                    }
                });
                viewGroup.addView(chip);
                break;
            default:
                String str = (String) obj;
                ((ArrayList) obj3).add(new ReadyChannelTabListLinkHandler(Owner.CC.m((String) obj2, "/", str), ((YoutubeChannelExtractor) obj4).channelId, str, new YoutubeChannelExtractor$$ExternalSyntheticLambda13()));
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
