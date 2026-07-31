package kotlinx.serialization;

import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MissingFieldException extends SerializationException {
    private final List<String> missingFields;
    private final String serialName;

    public MissingFieldException(String str, MissingFieldException missingFieldException, List list, String str2) {
        super(str, missingFieldException);
        this.missingFields = list;
        this.serialName = str2;
    }

    public final MissingFieldException withNewMessageInternal$kotlinx_serialization_core(String str) {
        return new MissingFieldException(str, this, this.missingFields, this.serialName);
    }
}
