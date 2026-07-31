package org.jsoup.select;

import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import j$.util.DesugarCollections;
import j$.util.function.Function$CC;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import java.util.function.Function;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Nodes$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Nodes$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo800andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((Node) obj).outerHtml();
            case 1:
                return ((AnnotatedMethod) obj).getFullName();
            case 2:
                StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
                String releaseBuilder = StringUtil.releaseBuilder(stringJoiner.sb);
                stringJoiner.sb = null;
                return releaseBuilder;
            case 3:
                Node node = (Node) obj;
                return node instanceof TextNode ? ((TextNode) node).coreValue() : node.nameIs("br") ? "\n" : "";
            case 4:
                return DesugarCollections.unmodifiableList((List) obj);
            case 5:
                return new HashMap();
            default:
                return new WeakHashMap();
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
