package org.schabi.newpipe.extractor;

import com.grack.nanojson.JsonObject;
import j$.util.function.Predicate$CC;
import java.util.Map;
import java.util.function.Predicate;
import org.schabi.newpipe.RouterActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NewPipe$$ExternalSyntheticLambda2 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ NewPipe$$ExternalSyntheticLambda2(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i = this.$r8$classId;
        String str = this.f$0;
        switch (i) {
            case 0:
                return ((StreamingService) obj).serviceInfo.name.equals(str);
            case 1:
                return str.equals(((RouterActivity.AdapterChoiceItem) obj).key);
            case 2:
                return ((MediaFormat) obj).mimeType.equals(str);
            case 3:
                return ((MediaFormat) obj).suffix.equals(str);
            case 4:
                return ((JsonObject) obj).containsKey(str);
            case 5:
                return str.equals(((JsonObject) obj).getString("type", null));
            case 6:
                return str.equals(((Map.Entry) obj).getValue());
            case 7:
                return ((JsonObject) obj).getString("service", "").equals(str);
            case 8:
                return ((JsonObject) obj).getString("key", "").equals(str);
            case 9:
                return ((JsonObject) obj).getObject("endpoint").getObject("commandMetadata").getObject("webCommandMetadata").getString("url", "").endsWith(str);
            case 10:
                return str.equals(((JsonObject) obj).getString("entityKey", null));
            case 11:
                return ((JsonObject) obj).containsKey(str);
            default:
                return ((String) obj).startsWith(str);
        }
    }
}
