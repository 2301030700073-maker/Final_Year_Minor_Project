package kotlinx.coroutines.reactive;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public enum Mode {
    FIRST("awaitFirst"),
    /* JADX INFO: Fake field, exist only in values array */
    FIRST_OR_DEFAULT("awaitFirstOrDefault"),
    /* JADX INFO: Fake field, exist only in values array */
    LAST("awaitLast"),
    /* JADX INFO: Fake field, exist only in values array */
    SINGLE("awaitSingle"),
    /* JADX INFO: Fake field, exist only in values array */
    SINGLE_OR_DEFAULT("awaitSingleOrDefault");

    private final String s;

    Mode(String str) {
        this.s = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.s;
    }
}
