package com.android.launcher3.userevent;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import c.b.b.M;
import c.b.b.N;
import com.android.launcher3.userevent.LauncherLogProto$ContainerType;
import com.android.launcher3.userevent.LauncherLogProto$ControlType;
import com.android.launcher3.userevent.LauncherLogProto$ItemType;
import com.android.launcher3.userevent.LauncherLogProto$TipType;
import com.android.systemui.shared.tracing.FrameProtoTracer;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherLogProto$Target extends K implements InterfaceC0472p0 {
    public static final int CARDINALITY_FIELD_NUMBER = 7;
    public static final int COMPONENT_HASH_FIELD_NUMBER = 11;
    public static final int CONTAINER_TYPE_FIELD_NUMBER = 6;
    public static final int CONTROL_TYPE_FIELD_NUMBER = 8;
    public static final LauncherLogProto$Target DEFAULT_INSTANCE;
    public static final int EXTENSION_FIELD_NUMBER = 16;
    public static final int FROM_FOLDER_LABEL_STATE_FIELD_NUMBER = 20;
    public static final int GRID_X_FIELD_NUMBER = 4;
    public static final int GRID_Y_FIELD_NUMBER = 5;
    public static final int INTENT_HASH_FIELD_NUMBER = 12;
    public static final int IS_WORK_APP_FIELD_NUMBER = 19;
    public static final int ITEM_TYPE_FIELD_NUMBER = 9;
    public static final int PACKAGE_NAME_HASH_FIELD_NUMBER = 10;
    public static final int PAGE_INDEX_FIELD_NUMBER = 2;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int PREDICTEDRANK_FIELD_NUMBER = 15;
    public static final int RANK_FIELD_NUMBER = 3;
    public static final int SEARCH_QUERY_LENGTH_FIELD_NUMBER = 18;
    public static final int SPAN_X_FIELD_NUMBER = 13;
    public static final int SPAN_Y_FIELD_NUMBER = 14;
    public static final int TIP_TYPE_FIELD_NUMBER = 17;
    public static final int TO_FOLDER_LABEL_STATE_FIELD_NUMBER = 21;
    public static final int TYPE_FIELD_NUMBER = 1;
    public int bitField0_;
    public int cardinality_;
    public int componentHash_;
    public int containerType_;
    public int controlType_;
    public LauncherLogExtensions$TargetExtension extension_;
    public int fromFolderLabelState_;
    public int gridX_;
    public int gridY_;
    public int intentHash_;
    public boolean isWorkApp_;
    public int itemType_;
    public int packageNameHash_;
    public int pageIndex_;
    public int predictedRank_;
    public int rank_;
    public int searchQueryLength_;
    public int spanX_ = 1;
    public int spanY_ = 1;
    public int tipType_;
    public int toFolderLabelState_;
    public int type_;

    public enum FromFolderLabelState implements M {
        FROM_FOLDER_LABEL_STATE_UNSPECIFIED(0),
        FROM_EMPTY(1),
        FROM_CUSTOM(2),
        FROM_SUGGESTED(3);

        public final int value;

        public final class FromFolderLabelStateVerifier implements N {
            public static final N INSTANCE = new FromFolderLabelStateVerifier();

            @Override // c.b.b.N
            public boolean isInRange(int i) {
                return FromFolderLabelState.forNumber(i) != null;
            }
        }

        FromFolderLabelState(int i) {
            this.value = i;
        }

        public static FromFolderLabelState forNumber(int i) {
            if (i == 0) {
                return FROM_FOLDER_LABEL_STATE_UNSPECIFIED;
            }
            if (i == 1) {
                return FROM_EMPTY;
            }
            if (i == 2) {
                return FROM_CUSTOM;
            }
            if (i != 3) {
                return null;
            }
            return FROM_SUGGESTED;
        }

        @Override // c.b.b.M
        public final int getNumber() {
            return this.value;
        }
    }

    public enum ToFolderLabelState implements M {
        TO_FOLDER_LABEL_STATE_UNSPECIFIED(0),
        TO_SUGGESTION0_WITH_VALID_PRIMARY(1),
        TO_SUGGESTION1_WITH_VALID_PRIMARY(2),
        TO_SUGGESTION1_WITH_EMPTY_PRIMARY(3),
        TO_SUGGESTION2_WITH_VALID_PRIMARY(4),
        TO_SUGGESTION2_WITH_EMPTY_PRIMARY(5),
        TO_SUGGESTION3_WITH_VALID_PRIMARY(6),
        TO_SUGGESTION3_WITH_EMPTY_PRIMARY(7),
        TO_EMPTY_WITH_VALID_SUGGESTIONS(8),
        TO_EMPTY_WITH_VALID_PRIMARY(15),
        TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY(16),
        TO_EMPTY_WITH_EMPTY_SUGGESTIONS(9),
        TO_EMPTY_WITH_SUGGESTIONS_DISABLED(10),
        TO_CUSTOM_WITH_VALID_SUGGESTIONS(11),
        TO_CUSTOM_WITH_VALID_PRIMARY(17),
        TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY(18),
        TO_CUSTOM_WITH_EMPTY_SUGGESTIONS(12),
        TO_CUSTOM_WITH_SUGGESTIONS_DISABLED(13),
        UNCHANGED(14);

        public final int value;

        public final class ToFolderLabelStateVerifier implements N {
            public static final N INSTANCE = new ToFolderLabelStateVerifier();

            @Override // c.b.b.N
            public boolean isInRange(int i) {
                return ToFolderLabelState.forNumber(i) != null;
            }
        }

        ToFolderLabelState(int i) {
            this.value = i;
        }

        public static ToFolderLabelState forNumber(int i) {
            switch (i) {
                case 0:
                    return TO_FOLDER_LABEL_STATE_UNSPECIFIED;
                case 1:
                    return TO_SUGGESTION0_WITH_VALID_PRIMARY;
                case 2:
                    return TO_SUGGESTION1_WITH_VALID_PRIMARY;
                case 3:
                    return TO_SUGGESTION1_WITH_EMPTY_PRIMARY;
                case 4:
                    return TO_SUGGESTION2_WITH_VALID_PRIMARY;
                case 5:
                    return TO_SUGGESTION2_WITH_EMPTY_PRIMARY;
                case 6:
                    return TO_SUGGESTION3_WITH_VALID_PRIMARY;
                case 7:
                    return TO_SUGGESTION3_WITH_EMPTY_PRIMARY;
                case 8:
                    return TO_EMPTY_WITH_VALID_SUGGESTIONS;
                case 9:
                    return TO_EMPTY_WITH_EMPTY_SUGGESTIONS;
                case 10:
                    return TO_EMPTY_WITH_SUGGESTIONS_DISABLED;
                case 11:
                    return TO_CUSTOM_WITH_VALID_SUGGESTIONS;
                case 12:
                    return TO_CUSTOM_WITH_EMPTY_SUGGESTIONS;
                case 13:
                    return TO_CUSTOM_WITH_SUGGESTIONS_DISABLED;
                case 14:
                    return UNCHANGED;
                case 15:
                    return TO_EMPTY_WITH_VALID_PRIMARY;
                case 16:
                    return TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
                case 17:
                    return TO_CUSTOM_WITH_VALID_PRIMARY;
                case 18:
                    return TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
                default:
                    return null;
            }
        }

        @Override // c.b.b.M
        public final int getNumber() {
            return this.value;
        }
    }

    public enum Type implements M {
        NONE(0),
        ITEM(1),
        CONTROL(2),
        CONTAINER(3);

        public final int value;

        public final class TypeVerifier implements N {
            public static final N INSTANCE = new TypeVerifier();

            @Override // c.b.b.N
            public boolean isInRange(int i) {
                return Type.forNumber(i) != null;
            }
        }

        Type(int i) {
            this.value = i;
        }

        public static Type forNumber(int i) {
            if (i == 0) {
                return NONE;
            }
            if (i == 1) {
                return ITEM;
            }
            if (i == 2) {
                return CONTROL;
            }
            if (i != 3) {
                return null;
            }
            return CONTAINER;
        }

        @Override // c.b.b.M
        public final int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherLogProto$Target launcherLogProto$Target = new LauncherLogProto$Target();
        DEFAULT_INSTANCE = launcherLogProto$Target;
        K.defaultInstanceMap.put(LauncherLogProto$Target.class, launcherLogProto$Target);
    }

    public static void access$100(LauncherLogProto$Target launcherLogProto$Target, Type type) {
        if (type == null) {
            throw null;
        }
        launcherLogProto$Target.bitField0_ |= 1;
        launcherLogProto$Target.type_ = type.value;
    }

    public static void access$1100(LauncherLogProto$Target launcherLogProto$Target, LauncherLogProto$ContainerType launcherLogProto$ContainerType) {
        if (launcherLogProto$ContainerType == null) {
            throw null;
        }
        launcherLogProto$Target.bitField0_ |= 32;
        launcherLogProto$Target.containerType_ = launcherLogProto$ContainerType.value;
    }

    public static void access$1700(LauncherLogProto$Target launcherLogProto$Target, LauncherLogProto$ItemType launcherLogProto$ItemType) {
        if (launcherLogProto$ItemType == null) {
            throw null;
        }
        launcherLogProto$Target.bitField0_ |= 256;
        launcherLogProto$Target.itemType_ = launcherLogProto$ItemType.value;
    }

    public static void access$4100(LauncherLogProto$Target launcherLogProto$Target, FromFolderLabelState fromFolderLabelState) {
        if (fromFolderLabelState == null) {
            throw null;
        }
        launcherLogProto$Target.bitField0_ |= 524288;
        launcherLogProto$Target.fromFolderLabelState_ = fromFolderLabelState.value;
    }

    public static void access$4300(LauncherLogProto$Target launcherLogProto$Target, ToFolderLabelState toFolderLabelState) {
        if (toFolderLabelState == null) {
            throw null;
        }
        launcherLogProto$Target.bitField0_ |= FrameProtoTracer.BUFFER_CAPACITY;
        launcherLogProto$Target.toFolderLabelState_ = toFolderLabelState.value;
    }

    public static Builder newBuilder() {
        return (Builder) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\f\u0000\u0002\u0004\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\f\u0005\u0007\u0004\u0006\b\f\u0007\t\f\b\n\u0004\t\u000b\u0004\n\f\u0004\u000b\r\u0004\f\u000e\u0004\r\u000f\u0004\u000e\u0010\t\u000f\u0011\f\u0010\u0012\u0004\u0011\u0013\u0007\u0012\u0014\f\u0013\u0015\f\u0014", new Object[]{"bitField0_", "type_", Type.TypeVerifier.INSTANCE, "pageIndex_", "rank_", "gridX_", "gridY_", "containerType_", LauncherLogProto$ContainerType.ContainerTypeVerifier.INSTANCE, "cardinality_", "controlType_", LauncherLogProto$ControlType.ControlTypeVerifier.INSTANCE, "itemType_", LauncherLogProto$ItemType.ItemTypeVerifier.INSTANCE, "packageNameHash_", "componentHash_", "intentHash_", "spanX_", "spanY_", "predictedRank_", "extension_", "tipType_", LauncherLogProto$TipType.TipTypeVerifier.INSTANCE, "searchQueryLength_", "isWorkApp_", "fromFolderLabelState_", FromFolderLabelState.FromFolderLabelStateVerifier.INSTANCE, "toFolderLabelState_", ToFolderLabelState.ToFolderLabelStateVerifier.INSTANCE});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherLogProto$Target();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherLogProto$Target.class) {
                        interfaceC0483v0 = PARSER;
                        if (interfaceC0483v0 == null) {
                            interfaceC0483v0 = new G(DEFAULT_INSTANCE);
                            PARSER = interfaceC0483v0;
                        }
                    }
                }
                return interfaceC0483v0;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final class Builder extends F implements InterfaceC0472p0 {
        public Builder() {
            super(LauncherLogProto$Target.DEFAULT_INSTANCE);
        }

        public Builder(LauncherLogProto$1 launcherLogProto$1) {
            super(LauncherLogProto$Target.DEFAULT_INSTANCE);
        }
    }
}
