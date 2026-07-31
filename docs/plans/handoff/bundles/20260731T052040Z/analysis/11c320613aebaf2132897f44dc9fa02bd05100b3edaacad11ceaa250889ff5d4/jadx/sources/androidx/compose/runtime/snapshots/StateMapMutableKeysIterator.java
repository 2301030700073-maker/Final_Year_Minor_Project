package androidx.compose.runtime.snapshots;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexer;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StateMapMutableKeysIterator extends AbstractJsonLexer implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ StateMapMutableKeysIterator(SnapshotStateMap snapshotStateMap, Iterator it, int i) {
        super(snapshotStateMap, it);
        this.$r8$classId = i;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                Map.Entry entry = (Map.Entry) this.escapedString;
                if (entry == null) {
                    Node$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    advance();
                    break;
                }
            case 1:
                advance();
                if (((Map.Entry) this.peekedString) == null) {
                    Node$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    break;
                }
            default:
                Map.Entry entry2 = (Map.Entry) this.escapedString;
                if (entry2 == null) {
                    Node$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    advance();
                    break;
                }
        }
        return null;
    }
}
