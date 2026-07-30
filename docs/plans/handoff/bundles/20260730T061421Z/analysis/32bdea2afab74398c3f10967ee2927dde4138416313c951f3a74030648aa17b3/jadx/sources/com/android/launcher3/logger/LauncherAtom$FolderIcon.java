package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherAtom$FolderIcon extends K implements InterfaceC0472p0 {
    public static final int CARDINALITY_FIELD_NUMBER = 1;
    public static final LauncherAtom$FolderIcon DEFAULT_INSTANCE;
    public static final int FROM_LABEL_STATE_FIELD_NUMBER = 2;
    public static final int LABEL_INFO_FIELD_NUMBER = 4;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int TO_LABEL_STATE_FIELD_NUMBER = 3;
    public int bitField0_;
    public int cardinality_;
    public int fromLabelState_;
    public String labelInfo_ = "";
    public int toLabelState_;

    static {
        LauncherAtom$FolderIcon launcherAtom$FolderIcon = new LauncherAtom$FolderIcon();
        DEFAULT_INSTANCE = launcherAtom$FolderIcon;
        K.defaultInstanceMap.put(LauncherAtom$FolderIcon.class, launcherAtom$FolderIcon);
    }

    public static void access$14500(LauncherAtom$FolderIcon launcherAtom$FolderIcon, LauncherAtom$FromState launcherAtom$FromState) {
        if (launcherAtom$FromState == null) {
            throw null;
        }
        launcherAtom$FolderIcon.bitField0_ |= 2;
        launcherAtom$FolderIcon.fromLabelState_ = launcherAtom$FromState.value;
    }

    public static void access$14700(LauncherAtom$FolderIcon launcherAtom$FolderIcon, LauncherAtom$ToState launcherAtom$ToState) {
        if (launcherAtom$ToState == null) {
            throw null;
        }
        launcherAtom$FolderIcon.bitField0_ |= 4;
        launcherAtom$FolderIcon.toLabelState_ = launcherAtom$ToState.value;
    }

    public static void access$14900(LauncherAtom$FolderIcon launcherAtom$FolderIcon, String str) {
        if (str == null) {
            throw null;
        }
        launcherAtom$FolderIcon.bitField0_ |= 8;
        launcherAtom$FolderIcon.labelInfo_ = str;
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\f\u0001\u0003\f\u0002\u0004\b\u0003", new Object[]{"bitField0_", "cardinality_", "fromLabelState_", LauncherAtom$FromState.FromStateVerifier.INSTANCE, "toLabelState_", LauncherAtom$ToState.ToStateVerifier.INSTANCE, "labelInfo_"});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherAtom$FolderIcon();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$FolderIcon.class) {
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
            super(LauncherAtom$FolderIcon.DEFAULT_INSTANCE);
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$FolderIcon.DEFAULT_INSTANCE);
        }
    }
}
