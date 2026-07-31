package org.jsoup.select;

import com.google.common.collect.CollectSpliterators$1;
import com.google.common.collect.Maps;
import j$.util.Collection;
import j$.util.DesugarArrays;
import j$.util.function.Function$CC;
import j$.util.stream.Stream;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.typedarrays.NativeArrayBuffer;
import org.mozilla.javascript.typedarrays.NativeDataView;
import org.schabi.newpipe.download.DownloadDialog;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Nodes$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Nodes$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        CollectSpliterators$1 map;
        Object js_byteLength;
        Object lambda$init$0;
        Object lambda$init$1;
        Object lambda$init$2;
        Stream stream;
        Stream stream2;
        Stream stream3;
        switch (this.$r8$classId) {
            case 1:
                map = Maps.map(Collection.EL.spliterator((java.util.Collection) r3.getValue()), new Player$$ExternalSyntheticLambda41(((Map.Entry) obj).getKey(), 1));
                break;
            case 6:
                StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
                String releaseBuilder = StringUtil.releaseBuilder(stringJoiner.sb);
                stringJoiner.sb = null;
                break;
            case 7:
                Node node = (Node) obj;
                if (node instanceof TextNode) {
                    break;
                } else if (node.nameIs("br")) {
                }
                break;
            case 9:
                break;
            case 11:
                break;
            case 12:
                js_byteLength = NativeArrayBuffer.js_byteLength((Scriptable) obj);
                break;
            case 13:
                lambda$init$0 = NativeDataView.lambda$init$0((Scriptable) obj);
                break;
            case 14:
                lambda$init$1 = NativeDataView.lambda$init$1((Scriptable) obj);
                break;
            case 15:
                lambda$init$2 = NativeDataView.lambda$init$2((Scriptable) obj);
                break;
            case 17:
                stream = DesugarArrays.stream(((String) obj).split("; *"));
                break;
            case 19:
                int i = DownloadDialog.$r8$clinit;
                break;
            case 21:
                Locale locale = (Locale) obj;
                break;
            case 23:
                stream2 = Collection.EL.stream(((Element) obj).getElementsByTag("img"));
                break;
            case 27:
                stream3 = Collection.EL.stream(((Element) obj).getElementsByTag("img"));
                break;
        }
        return ((Element) obj).attr("src");
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
