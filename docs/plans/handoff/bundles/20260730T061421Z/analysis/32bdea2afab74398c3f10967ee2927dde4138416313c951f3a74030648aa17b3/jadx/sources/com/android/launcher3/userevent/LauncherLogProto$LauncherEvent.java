package com.android.launcher3.userevent;

import c.b.b.A0;
import c.b.b.C0449e;
import c.b.b.C0486x;
import c.b.b.C0487x0;
import c.b.b.C0489y0;
import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import c.b.b.O;
import com.android.launcher3.userevent.LauncherLogProto$Action;
import com.android.launcher3.userevent.LauncherLogProto$Target;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class LauncherLogProto$LauncherEvent extends K implements InterfaceC0472p0 {
    public static final int ACTION_DURATION_MILLIS_FIELD_NUMBER = 4;
    public static final int ACTION_FIELD_NUMBER = 1;
    public static final LauncherLogProto$LauncherEvent DEFAULT_INSTANCE;
    public static final int DEST_TARGET_FIELD_NUMBER = 3;
    public static final int ELAPSED_CONTAINER_MILLIS_FIELD_NUMBER = 5;
    public static final int ELAPSED_SESSION_MILLIS_FIELD_NUMBER = 6;
    public static final int EXTENSION_FIELD_NUMBER = 9;
    public static final int IS_IN_LANDSCAPE_MODE_FIELD_NUMBER = 8;
    public static final int IS_IN_MULTI_WINDOW_MODE_FIELD_NUMBER = 7;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int SRC_TARGET_FIELD_NUMBER = 2;
    public long actionDurationMillis_;
    public LauncherLogProto$Action action_;
    public int bitField0_;
    public O destTarget_;
    public long elapsedContainerMillis_;
    public long elapsedSessionMillis_;
    public LauncherLogExtensions$LauncherEventExtension extension_;
    public boolean isInLandscapeMode_;
    public boolean isInMultiWindowMode_;
    public byte memoizedIsInitialized = 2;
    public O srcTarget_;

    static {
        LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = new LauncherLogProto$LauncherEvent();
        DEFAULT_INSTANCE = launcherLogProto$LauncherEvent;
        K.defaultInstanceMap.put(LauncherLogProto$LauncherEvent.class, launcherLogProto$LauncherEvent);
    }

    public LauncherLogProto$LauncherEvent() {
        C0489y0 c0489y0 = C0489y0.f3227c;
        this.srcTarget_ = c0489y0;
        this.destTarget_ = c0489y0;
    }

    public static void access$6200(LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, LauncherLogProto$Action.Builder builder) {
        Objects.requireNonNull(launcherLogProto$LauncherEvent);
        launcherLogProto$LauncherEvent.action_ = (LauncherLogProto$Action) builder.build();
        launcherLogProto$LauncherEvent.bitField0_ |= 1;
    }

    public static LauncherLogProto$LauncherEvent parseFrom(byte[] bArr) {
        LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = DEFAULT_INSTANCE;
        int length = bArr.length;
        C0486x a2 = C0486x.a();
        K k = (K) launcherLogProto$LauncherEvent.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE, null, null);
        try {
            A0 b2 = C0487x0.f3224c.b(k);
            b2.e(k, bArr, 0, length + 0, new C0449e(a2));
            b2.h(k);
            if (k.memoizedHashCode != 0) {
                throw new RuntimeException();
            }
            if (k.isInitialized()) {
                return (LauncherLogProto$LauncherEvent) k;
            }
            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(new UninitializedMessageException().getMessage());
            invalidProtocolBufferException.unfinishedMessage = k;
            throw invalidProtocolBufferException;
        } catch (IOException e) {
            if (e.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e.getCause());
            }
            InvalidProtocolBufferException invalidProtocolBufferException2 = new InvalidProtocolBufferException(e.getMessage());
            invalidProtocolBufferException2.unfinishedMessage = k;
            throw invalidProtocolBufferException2;
        } catch (IndexOutOfBoundsException unused) {
            InvalidProtocolBufferException f = InvalidProtocolBufferException.f();
            f.unfinishedMessage = k;
            throw f;
        }
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.memoizedIsInitialized);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0001\u0001ԉ\u0000\u0002\u001b\u0003\u001b\u0004\u0002\u0001\u0005\u0002\u0002\u0006\u0002\u0003\u0007\u0007\u0004\b\u0007\u0005\t\t\u0006", new Object[]{"bitField0_", "action_", "srcTarget_", LauncherLogProto$Target.class, "destTarget_", LauncherLogProto$Target.class, "actionDurationMillis_", "elapsedContainerMillis_", "elapsedSessionMillis_", "isInMultiWindowMode_", "isInLandscapeMode_", "extension_"});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherLogProto$LauncherEvent();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherLogProto$LauncherEvent.class) {
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
            super(LauncherLogProto$LauncherEvent.DEFAULT_INSTANCE);
        }

        public Builder addSrcTarget(LauncherLogProto$Target.Builder builder) {
            copyOnWrite();
            LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = (LauncherLogProto$LauncherEvent) this.instance;
            if (!launcherLogProto$LauncherEvent.srcTarget_.f()) {
                O o = launcherLogProto$LauncherEvent.srcTarget_;
                int size = o.size();
                launcherLogProto$LauncherEvent.srcTarget_ = o.d(size == 0 ? 10 : size * 2);
            }
            launcherLogProto$LauncherEvent.srcTarget_.add((LauncherLogProto$Target) builder.build());
            return this;
        }

        public Builder(LauncherLogProto$1 launcherLogProto$1) {
            super(LauncherLogProto$LauncherEvent.DEFAULT_INSTANCE);
        }
    }
}
