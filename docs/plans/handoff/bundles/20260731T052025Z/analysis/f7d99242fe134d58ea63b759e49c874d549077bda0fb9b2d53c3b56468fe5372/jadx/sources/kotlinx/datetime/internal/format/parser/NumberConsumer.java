package kotlinx.datetime.internal.format.parser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NumberConsumer {
    public final Integer length;
    public final String whatThisExpects;

    public NumberConsumer(Integer num, String str) {
        this.length = num;
        this.whatThisExpects = str;
    }

    public abstract NumberConsumptionError consume(int i, int i2, Object obj, String str);
}
