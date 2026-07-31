package io.noties.markwon.core.factory;

import androidx.transition.Transition;
import coil3.ComponentRegistry;
import io.noties.markwon.RenderPropsImpl;
import io.noties.markwon.core.CoreProps;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.core.spans.BlockQuoteSpan;
import io.noties.markwon.core.spans.BulletListItemSpan;
import io.noties.markwon.core.spans.CodeBlockSpan;
import io.noties.markwon.core.spans.CodeSpan;
import io.noties.markwon.core.spans.EmphasisSpan;
import io.noties.markwon.core.spans.HeadingSpan;
import io.noties.markwon.core.spans.LinkSpan;
import io.noties.markwon.core.spans.OrderedListItemSpan;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CodeSpanFactory {
    public final /* synthetic */ int $r8$classId;

    public final Object getSpans(ComponentRegistry.Builder builder, RenderPropsImpl renderPropsImpl) {
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                return new CodeSpan((MarkwonTheme) builder.interceptors, i);
            case 1:
                return new BlockQuoteSpan((MarkwonTheme) builder.interceptors, 0);
            case 2:
                return new CodeBlockSpan((MarkwonTheme) builder.interceptors);
            case 3:
                return new EmphasisSpan(0);
            case 4:
                return new HeadingSpan((MarkwonTheme) builder.interceptors, ((Integer) CoreProps.HEADING_LEVEL.require(renderPropsImpl)).intValue());
            case 5:
                return new LinkSpan((MarkwonTheme) builder.interceptors, (String) CoreProps.LINK_DESTINATION.require(renderPropsImpl), (Transition.AnonymousClass1) builder.keyers);
            case 6:
                MarkwonTheme markwonTheme = (MarkwonTheme) builder.interceptors;
                return CoreProps.ListItemType.BULLET == CoreProps.LIST_ITEM_TYPE.require(renderPropsImpl) ? new BulletListItemSpan(markwonTheme, ((Integer) CoreProps.BULLET_LIST_ITEM_LEVEL.require(renderPropsImpl)).intValue()) : new OrderedListItemSpan(markwonTheme, String.valueOf(CoreProps.ORDERED_LIST_ITEM_NUMBER.require(renderPropsImpl)).concat(". "));
            case 7:
                return new EmphasisSpan(1);
            default:
                return new BlockQuoteSpan((MarkwonTheme) builder.interceptors, 1);
        }
    }
}
