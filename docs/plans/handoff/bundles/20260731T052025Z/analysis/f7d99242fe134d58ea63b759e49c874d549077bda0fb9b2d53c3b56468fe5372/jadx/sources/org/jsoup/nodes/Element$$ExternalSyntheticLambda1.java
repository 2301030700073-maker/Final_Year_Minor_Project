package org.jsoup.nodes;

import androidx.datastore.preferences.PreferencesProto$Value;
import j$.util.DesugarCollections;
import j$.util.function.Function$CC;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Function;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Element$$ExternalSyntheticLambda1 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo970andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return TextNode.class.cast((Node) obj);
            case 1:
                return Boolean.valueOf(Boolean.parseBoolean((String) obj));
            case 2:
                return new HashSet();
            case 3:
                return new HashMap();
            case 4:
                return new IdentityHashMap();
            case 5:
                StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
                String releaseBuilder = StringUtil.releaseBuilder(stringJoiner.sb);
                stringJoiner.sb = null;
                return releaseBuilder;
            case 6:
                return DesugarCollections.unmodifiableList((List) obj);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Node node = (Node) obj;
                return node instanceof TextNode ? ((TextNode) node).coreValue() : node.nameIs("br") ? "\n" : "";
            default:
                return ((Element) obj).outerHtml();
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
