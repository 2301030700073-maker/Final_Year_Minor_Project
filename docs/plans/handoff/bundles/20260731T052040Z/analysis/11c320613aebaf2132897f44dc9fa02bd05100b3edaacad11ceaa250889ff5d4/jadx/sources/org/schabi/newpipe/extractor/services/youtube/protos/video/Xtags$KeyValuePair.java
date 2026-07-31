package org.schabi.newpipe.extractor.services.youtube.protos.video;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Parser;
import com.google.protobuf.RawMessageInfo;
import org.schabi.newpipe.extractor.services.youtube.protos.video.Xtags$XTags;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Xtags$KeyValuePair extends GeneratedMessageLite {
    private static final Xtags$KeyValuePair DEFAULT_INSTANCE;
    public static final int KEY_FIELD_NUMBER = 1;
    private static volatile Parser PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int bitField0_;
    private String key_ = "";
    private String value_ = "";

    static {
        Xtags$KeyValuePair xtags$KeyValuePair = new Xtags$KeyValuePair();
        DEFAULT_INSTANCE = xtags$KeyValuePair;
        GeneratedMessageLite.registerDefaultInstance(Xtags$KeyValuePair.class, xtags$KeyValuePair);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(int i) {
        Parser parser;
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return new RawMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001", new Object[]{"bitField0_", "key_", "value_"});
        }
        if (ordinal == 3) {
            return new Xtags$KeyValuePair();
        }
        if (ordinal == 4) {
            return new Xtags$XTags.Builder(DEFAULT_INSTANCE);
        }
        if (ordinal == 5) {
            return DEFAULT_INSTANCE;
        }
        if (ordinal != 6) {
            throw null;
        }
        Parser parser2 = PARSER;
        if (parser2 != null) {
            return parser2;
        }
        synchronized (Xtags$KeyValuePair.class) {
            try {
                parser = PARSER;
                if (parser == null) {
                    parser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                    PARSER = parser;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return parser;
    }

    public final String getKey() {
        return this.key_;
    }

    public final String getValue() {
        return this.value_;
    }
}
