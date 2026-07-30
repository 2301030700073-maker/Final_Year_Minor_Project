package defpackage;

/* renamed from: fE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2739fE implements InterfaceC0800cG {

    /* renamed from: break, reason: not valid java name */
    public final String f12862break;

    /* renamed from: do, reason: not valid java name */
    public final Object f12863do;

    public /* synthetic */ C2739fE(String str, C0495Sh c0495Sh) {
        this.f12862break = str;
        this.f12863do = c0495Sh;
    }

    @Override // defpackage.InterfaceC0800cG
    /* renamed from: do */
    public final String mo4894do() {
        return this.f12862break;
    }

    @Override // defpackage.InterfaceC0800cG
    /* renamed from: if */
    public final void mo4895if(C0585Wj c0585Wj) {
        Object[] objArr = (Object[]) this.f12863do;
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            i++;
            if (obj == null) {
                c0585Wj.m2764new(i);
            } else if (obj instanceof byte[]) {
                c0585Wj.m2761do(i, (byte[]) obj);
            } else if (obj instanceof Float) {
                c0585Wj.m2763if(i, ((Float) obj).floatValue());
            } else if (obj instanceof Double) {
                c0585Wj.m2763if(i, ((Double) obj).doubleValue());
            } else if (obj instanceof Long) {
                c0585Wj.m2762for(i, ((Long) obj).longValue());
            } else if (obj instanceof Integer) {
                c0585Wj.m2762for(i, ((Integer) obj).intValue());
            } else if (obj instanceof Short) {
                c0585Wj.m2762for(i, ((Short) obj).shortValue());
            } else if (obj instanceof Byte) {
                c0585Wj.m2762for(i, ((Byte) obj).byteValue());
            } else if (obj instanceof String) {
                c0585Wj.m2760case(i, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
                }
                c0585Wj.m2762for(i, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
    }
}
