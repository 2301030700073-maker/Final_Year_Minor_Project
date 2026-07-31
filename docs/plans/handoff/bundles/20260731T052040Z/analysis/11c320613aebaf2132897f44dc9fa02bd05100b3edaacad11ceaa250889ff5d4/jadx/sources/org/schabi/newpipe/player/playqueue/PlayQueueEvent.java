package org.schabi.newpipe.player.playqueue;

import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public interface PlayQueueEvent extends Serializable {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AppendEvent implements PlayQueueEvent {
        private final int amount;

        public AppendEvent(int i) {
            this.amount = i;
        }

        public final int getAmount() {
            return this.amount;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.APPEND;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ErrorEvent implements PlayQueueEvent {
        private final int errorIndex;
        private final int queueIndex;

        public ErrorEvent(int i, int i2) {
            this.errorIndex = i;
            this.queueIndex = i2;
        }

        public final int getErrorIndex() {
            return this.errorIndex;
        }

        public final int getQueueIndex() {
            return this.queueIndex;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.ERROR;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InitEvent implements PlayQueueEvent {
        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.INIT;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MoveEvent implements PlayQueueEvent {
        private final int fromIndex;
        private final int toIndex;

        public MoveEvent(int i, int i2) {
            this.fromIndex = i;
            this.toIndex = i2;
        }

        public final int getFromIndex() {
            return this.fromIndex;
        }

        public final int getToIndex() {
            return this.toIndex;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.MOVE;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RecoveryEvent implements PlayQueueEvent {
        private final int index;
        private final long position;

        public RecoveryEvent(int i, long j) {
            this.index = i;
            this.position = j;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.RECOVERY;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RemoveEvent implements PlayQueueEvent {
        private final int queueIndex;
        private final int removeIndex;

        public RemoveEvent(int i, int i2) {
            this.removeIndex = i;
            this.queueIndex = i2;
        }

        public final int getQueueIndex() {
            return this.queueIndex;
        }

        public final int getRemoveIndex() {
            return this.removeIndex;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.REMOVE;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ReorderEvent implements PlayQueueEvent {
        private final int fromSelectedIndex;
        private final int toSelectedIndex;

        public ReorderEvent(int i, int i2) {
            this.fromSelectedIndex = i;
            this.toSelectedIndex = i2;
        }

        public final int getFromSelectedIndex() {
            return this.fromSelectedIndex;
        }

        public final int getToSelectedIndex() {
            return this.toSelectedIndex;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.REORDER;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SelectEvent implements PlayQueueEvent {
        private final int newIndex;
        private final int oldIndex;

        public SelectEvent(int i, int i2) {
            this.oldIndex = i;
            this.newIndex = i2;
        }

        public final int getNewIndex() {
            return this.newIndex;
        }

        public final int getOldIndex() {
            return this.oldIndex;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueEvent
        public final Type type() {
            return Type.SELECT;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Type {
        public static final /* synthetic */ Type[] $VALUES;
        public static final Type APPEND;
        public static final Type ERROR;
        public static final Type INIT;
        public static final Type MOVE;
        public static final Type RECOVERY;
        public static final Type REMOVE;
        public static final Type REORDER;
        public static final Type SELECT;

        static {
            Type type = new Type("INIT", 0);
            INIT = type;
            Type type2 = new Type("SELECT", 1);
            SELECT = type2;
            Type type3 = new Type("APPEND", 2);
            APPEND = type3;
            Type type4 = new Type("REMOVE", 3);
            REMOVE = type4;
            Type type5 = new Type("MOVE", 4);
            MOVE = type5;
            Type type6 = new Type("REORDER", 5);
            REORDER = type6;
            Type type7 = new Type("RECOVERY", 6);
            RECOVERY = type7;
            Type type8 = new Type("ERROR", 7);
            ERROR = type8;
            $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    Type type();
}
