package com.android.launcher3.userevent;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import c.b.b.M;
import c.b.b.N;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherLogProto$Action extends K implements InterfaceC0472p0 {
    public static final int COMMAND_FIELD_NUMBER = 4;
    public static final LauncherLogProto$Action DEFAULT_INSTANCE;
    public static final int DIR_FIELD_NUMBER = 3;
    public static final int IS_OUTSIDE_FIELD_NUMBER = 5;
    public static final int IS_STATE_CHANGE_FIELD_NUMBER = 6;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int TOUCH_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    public int bitField0_;
    public int command_;
    public int dir_;
    public boolean isOutside_;
    public boolean isStateChange_;
    public int touch_;
    public int type_;

    public enum Command implements M {
        HOME_INTENT(0),
        BACK(1),
        ENTRY(2),
        CANCEL(3),
        CONFIRM(4),
        STOP(5),
        RECENTS_BUTTON(6),
        RESUME(7);

        public final int value;

        public final class CommandVerifier implements N {
            public static final N INSTANCE = new CommandVerifier();

            @Override // c.b.b.N
            public boolean isInRange(int i) {
                return Command.forNumber(i) != null;
            }
        }

        Command(int i) {
            this.value = i;
        }

        public static Command forNumber(int i) {
            switch (i) {
                case 0:
                    return HOME_INTENT;
                case 1:
                    return BACK;
                case 2:
                    return ENTRY;
                case 3:
                    return CANCEL;
                case 4:
                    return CONFIRM;
                case 5:
                    return STOP;
                case 6:
                    return RECENTS_BUTTON;
                case 7:
                    return RESUME;
                default:
                    return null;
            }
        }

        @Override // c.b.b.M
        public final int getNumber() {
            return this.value;
        }
    }

    public enum Direction implements M {
        NONE(0),
        UP(1),
        DOWN(2),
        LEFT(3),
        RIGHT(4),
        UPRIGHT(5),
        UPLEFT(6);

        public final int value;

        public final class DirectionVerifier implements N {
            public static final N INSTANCE = new DirectionVerifier();

            @Override // c.b.b.N
            public boolean isInRange(int i) {
                return Direction.forNumber(i) != null;
            }
        }

        Direction(int i) {
            this.value = i;
        }

        public static Direction forNumber(int i) {
            switch (i) {
                case 0:
                    return NONE;
                case 1:
                    return UP;
                case 2:
                    return DOWN;
                case 3:
                    return LEFT;
                case 4:
                    return RIGHT;
                case 5:
                    return UPRIGHT;
                case 6:
                    return UPLEFT;
                default:
                    return null;
            }
        }

        @Override // c.b.b.M
        public final int getNumber() {
            return this.value;
        }
    }

    public enum Touch implements M {
        TAP(0),
        LONGPRESS(1),
        DRAGDROP(2),
        SWIPE(3),
        FLING(4),
        PINCH(5),
        SWIPE_NOOP(6);

        public final int value;

        public final class TouchVerifier implements N {
            public static final N INSTANCE = new TouchVerifier();

            @Override // c.b.b.N
            public boolean isInRange(int i) {
                return Touch.forNumber(i) != null;
            }
        }

        Touch(int i) {
            this.value = i;
        }

        public static Touch forNumber(int i) {
            switch (i) {
                case 0:
                    return TAP;
                case 1:
                    return LONGPRESS;
                case 2:
                    return DRAGDROP;
                case 3:
                    return SWIPE;
                case 4:
                    return FLING;
                case 5:
                    return PINCH;
                case 6:
                    return SWIPE_NOOP;
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
        TOUCH(0),
        AUTOMATED(1),
        COMMAND(2),
        TIP(3),
        SOFT_KEYBOARD(4);

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
                return TOUCH;
            }
            if (i == 1) {
                return AUTOMATED;
            }
            if (i == 2) {
                return COMMAND;
            }
            if (i == 3) {
                return TIP;
            }
            if (i != 4) {
                return null;
            }
            return SOFT_KEYBOARD;
        }

        @Override // c.b.b.M
        public final int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherLogProto$Action launcherLogProto$Action = new LauncherLogProto$Action();
        DEFAULT_INSTANCE = launcherLogProto$Action;
        K.defaultInstanceMap.put(LauncherLogProto$Action.class, launcherLogProto$Action);
    }

    public static void access$4700(LauncherLogProto$Action launcherLogProto$Action, Type type) {
        if (type == null) {
            throw null;
        }
        launcherLogProto$Action.bitField0_ |= 1;
        launcherLogProto$Action.type_ = type.value;
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001\u0003\f\u0002\u0004\f\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"bitField0_", "type_", Type.TypeVerifier.INSTANCE, "touch_", Touch.TouchVerifier.INSTANCE, "dir_", Direction.DirectionVerifier.INSTANCE, "command_", Command.CommandVerifier.INSTANCE, "isOutside_", "isStateChange_"});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherLogProto$Action();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherLogProto$Action.class) {
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
            super(LauncherLogProto$Action.DEFAULT_INSTANCE);
        }

        public Builder(LauncherLogProto$1 launcherLogProto$1) {
            super(LauncherLogProto$Action.DEFAULT_INSTANCE);
        }
    }
}
