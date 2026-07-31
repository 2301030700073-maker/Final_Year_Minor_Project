package io.reactivex.rxjava3.schedulers;

import io.reactivex.rxjava3.internal.schedulers.ComputationScheduler;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.schedulers.NewThreadScheduler;
import io.reactivex.rxjava3.internal.schedulers.SingleScheduler;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Schedulers {
    public static final ComputationScheduler COMPUTATION;
    public static final IoScheduler IO;
    public static final SingleScheduler SINGLE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ComputationHolder {
        public static final ComputationScheduler DEFAULT = new ComputationScheduler();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class IoHolder {
        public static final IoScheduler DEFAULT = new IoScheduler();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class NewThreadHolder {
        public static final NewThreadScheduler DEFAULT = new NewThreadScheduler();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SingleHolder {
        public static final SingleScheduler DEFAULT = new SingleScheduler();
    }

    static {
        RuntimeException wrapOrThrow;
        try {
            SingleScheduler singleScheduler = SingleHolder.DEFAULT;
            Objects.requireNonNull(singleScheduler, "Scheduler Supplier result can't be null");
            SINGLE = singleScheduler;
            try {
                ComputationScheduler computationScheduler = ComputationHolder.DEFAULT;
                Objects.requireNonNull(computationScheduler, "Scheduler Supplier result can't be null");
                COMPUTATION = computationScheduler;
                try {
                    IoScheduler ioScheduler = IoHolder.DEFAULT;
                    Objects.requireNonNull(ioScheduler, "Scheduler Supplier result can't be null");
                    IO = ioScheduler;
                    int i = TrampolineScheduler.$r8$clinit;
                    try {
                        Objects.requireNonNull(NewThreadHolder.DEFAULT, "Scheduler Supplier result can't be null");
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }
}
