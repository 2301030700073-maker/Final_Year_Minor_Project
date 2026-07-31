package okhttp3.internal.http2;

import java.io.IOException;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function6;
import kotlin.text.RegexKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.internal.EnumDescriptor;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.didyouknow.DidYouKnowCard;
import org.wikipedia.feed.featured.FeaturedArticleCard;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.news.NewsCard;
import org.wikipedia.feed.onthisday.OnThisDayCard;
import org.wikipedia.feed.topread.TopReadCard;
import org.wikipedia.page.PageTitle;
import org.wikipedia.search.SearchResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Http2Connection$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda2(int i, String str, EnumDescriptor enumDescriptor) {
        this.$r8$classId = 1;
        this.f$1 = i;
        this.f$0 = str;
        this.f$2 = enumDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                Http2Connection http2Connection = (Http2Connection) obj2;
                ErrorCode errorCode = (ErrorCode) obj;
                try {
                    errorCode.getClass();
                    http2Connection.writer.rstStream(i2, errorCode);
                    break;
                } catch (IOException e) {
                    ErrorCode errorCode2 = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode2, errorCode2, e);
                    break;
                }
            case 1:
                String str = (String) obj2;
                EnumDescriptor enumDescriptor = (EnumDescriptor) obj;
                SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    serialDescriptorArr[i3] = RegexKt.buildSerialDescriptor$default(str + '.' + enumDescriptor.names[i3], StructureKind$MAP.INSTANCE$3, new SerialDescriptor[0]);
                }
                break;
            case 2:
                ((Function1) obj2).invoke(new HomeAction.CardImpression((TopReadCard) obj, i2));
                break;
            case 3:
                ((Function1) obj2).invoke(new HomeAction.CardImpression((OnThisDayCard) obj, i2));
                break;
            case 4:
                ((Function1) obj2).invoke(new HomeAction.CardImpression((FeaturedImageCard) obj, i2));
                break;
            case 5:
                ((Function1) obj2).invoke(new HomeAction.CardImpression((DidYouKnowCard) obj, i2));
                break;
            case 6:
                ((Function1) obj2).invoke(new HomeAction.CardImpression((FeaturedArticleCard) obj, i2));
                break;
            case 7:
                ((Function1) obj2).invoke(new HomeAction.CardImpression((NewsCard) obj, i2));
                break;
            default:
                SearchResult searchResult = (SearchResult) obj;
                PageTitle pageTitle = searchResult.pageTitle;
                Boolean bool = Boolean.FALSE;
                ((Function6) obj2).invoke(searchResult, pageTitle, bool, bool, Integer.valueOf(i2), searchResult.getLocation());
                break;
        }
        return unit;
        return unit;
    }

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda2(int i, int i2, Object obj, Function function) {
        this.$r8$classId = i2;
        this.f$0 = function;
        this.f$2 = obj;
        this.f$1 = i;
    }

    public /* synthetic */ Http2Connection$$ExternalSyntheticLambda2(Http2Connection http2Connection, int i, ErrorCode errorCode) {
        this.$r8$classId = 0;
        this.f$0 = http2Connection;
        this.f$1 = i;
        this.f$2 = errorCode;
    }
}
