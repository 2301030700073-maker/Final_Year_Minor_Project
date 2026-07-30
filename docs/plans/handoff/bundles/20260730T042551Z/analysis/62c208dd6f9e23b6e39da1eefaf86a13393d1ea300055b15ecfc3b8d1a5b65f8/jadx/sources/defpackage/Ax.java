package defpackage;

import androidx.datastore.preferences.protobuf.Cthrow;
import androidx.datastore.preferences.protobuf.Cwhile;
import com.facebook.internal.FacebookRequestErrorClassification;
import defpackage.AbstractC3666s8;
import defpackage.AbstractC3890vx;
import defpackage.C3201kE;
import defpackage.C4008xx;
import defpackage.C4067yx;
import defpackage.C4126zx;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class Ax implements InterfaceC3670sC<AbstractC3890vx> {

    /* renamed from: do, reason: not valid java name */
    public static final Ax f172do = new Ax();

    /* renamed from: Ax$do, reason: invalid class name */
    public /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f173do;

        static {
            int[] iArr = new int[C4122zt._values().length];
            iArr[0] = 1;
            iArr[1] = 2;
            iArr[6] = 3;
            iArr[2] = 4;
            iArr[3] = 5;
            iArr[4] = 6;
            iArr[5] = 7;
            iArr[7] = 8;
            f173do = iArr;
        }
    }

    @Override // defpackage.InterfaceC3670sC
    /* renamed from: do, reason: not valid java name */
    public final C0441Pt mo130do() {
        return new C0441Pt(true, 1);
    }

    @Override // defpackage.InterfaceC3670sC
    /* renamed from: for, reason: not valid java name */
    public final C3206kJ mo131for(Object obj, C3201kE.Cif cif) {
        C4126zx m3876else;
        Map<AbstractC3890vx.Cdo<?>, Object> mo1811do = ((AbstractC3890vx) obj).mo1811do();
        C4008xx.Cdo m8680import = C4008xx.m8680import();
        for (Map.Entry<AbstractC3890vx.Cdo<?>, Object> entry : mo1811do.entrySet()) {
            AbstractC3890vx.Cdo<?> key = entry.getKey();
            Object value = entry.getValue();
            String str = key.f16155do;
            if (value instanceof Boolean) {
                C4126zx.Cdo m8844strictfp = C4126zx.m8844strictfp();
                boolean booleanValue = ((Boolean) value).booleanValue();
                m8844strictfp.m3878this();
                C4126zx.m8841public((C4126zx) m8844strictfp.f6593if, booleanValue);
                m3876else = m8844strictfp.m3876else();
            } else if (value instanceof Float) {
                C4126zx.Cdo m8844strictfp2 = C4126zx.m8844strictfp();
                float floatValue = ((Number) value).floatValue();
                m8844strictfp2.m3878this();
                C4126zx.m8842return((C4126zx) m8844strictfp2.f6593if, floatValue);
                m3876else = m8844strictfp2.m3876else();
            } else if (value instanceof Double) {
                C4126zx.Cdo m8844strictfp3 = C4126zx.m8844strictfp();
                double doubleValue = ((Number) value).doubleValue();
                m8844strictfp3.m3878this();
                C4126zx.m8839import((C4126zx) m8844strictfp3.f6593if, doubleValue);
                m3876else = m8844strictfp3.m3876else();
            } else if (value instanceof Integer) {
                C4126zx.Cdo m8844strictfp4 = C4126zx.m8844strictfp();
                int intValue = ((Number) value).intValue();
                m8844strictfp4.m3878this();
                C4126zx.m8843static((C4126zx) m8844strictfp4.f6593if, intValue);
                m3876else = m8844strictfp4.m3876else();
            } else if (value instanceof Long) {
                C4126zx.Cdo m8844strictfp5 = C4126zx.m8844strictfp();
                long longValue = ((Number) value).longValue();
                m8844strictfp5.m3878this();
                C4126zx.m8845super((C4126zx) m8844strictfp5.f6593if, longValue);
                m3876else = m8844strictfp5.m3876else();
            } else if (value instanceof String) {
                C4126zx.Cdo m8844strictfp6 = C4126zx.m8844strictfp();
                m8844strictfp6.m3878this();
                C4126zx.m8846throw((C4126zx) m8844strictfp6.f6593if, (String) value);
                m3876else = m8844strictfp6.m3876else();
            } else {
                if (!(value instanceof Set)) {
                    throw new IllegalStateException(C0173Do.m397goto(value.getClass().getName(), "PreferencesSerializer does not support type: "));
                }
                C4126zx.Cdo m8844strictfp7 = C4126zx.m8844strictfp();
                C4067yx.Cdo m8777native = C4067yx.m8777native();
                m8777native.m3878this();
                C4067yx.m8779throw((C4067yx) m8777native.f6593if, (Set) value);
                m8844strictfp7.m3878this();
                C4126zx.m8848while((C4126zx) m8844strictfp7.f6593if, m8777native);
                m3876else = m8844strictfp7.m3876else();
            }
            m8680import.getClass();
            str.getClass();
            m8680import.m3878this();
            C4008xx.m8683throw((C4008xx) m8680import.f6593if).put(str, m3876else);
        }
        C4008xx m3876else2 = m8680import.m3876else();
        int mo3871do = m3876else2.mo3871do();
        Logger logger = AbstractC3666s8.f15399do;
        if (mo3871do > 4096) {
            mo3871do = 4096;
        }
        AbstractC3666s8.Cnew cnew = new AbstractC3666s8.Cnew(cif, mo3871do);
        m3876else2.mo3870case(cnew);
        if (cnew.f15404if > 0) {
            cnew.B();
        }
        return C3206kJ.f13965do;
    }

    @Override // defpackage.InterfaceC3670sC
    /* renamed from: if, reason: not valid java name */
    public final C0441Pt mo132if(FileInputStream fileInputStream) {
        try {
            C4008xx m8681native = C4008xx.m8681native(fileInputStream);
            C0441Pt c0441Pt = new C0441Pt(false, 1);
            AbstractC3890vx.Cif[] cifArr = (AbstractC3890vx.Cif[]) Arrays.copyOf(new AbstractC3890vx.Cif[0], 0);
            C0173Do.m401try(cifArr, "pairs");
            c0441Pt.m1812for();
            if (cifArr.length > 0) {
                cifArr[0].getClass();
                c0441Pt.m1814new(null, null);
                throw null;
            }
            Map<String, C4126zx> m8684while = m8681native.m8684while();
            C0173Do.m399new(m8684while, "preferencesProto.preferencesMap");
            for (Map.Entry<String, C4126zx> entry : m8684while.entrySet()) {
                String key = entry.getKey();
                C4126zx value = entry.getValue();
                C0173Do.m399new(key, FacebookRequestErrorClassification.KEY_NAME);
                C0173Do.m399new(value, "value");
                int m8850continue = value.m8850continue();
                switch (m8850continue == 0 ? -1 : Cdo.f173do[C4122zt.m8819catch(m8850continue)]) {
                    case -1:
                        throw new C3868vb("Value case is null.");
                    case 0:
                    default:
                        throw new C0623Yd();
                    case 1:
                        c0441Pt.m1814new(new AbstractC3890vx.Cdo<>(key), Boolean.valueOf(value.m8856switch()));
                        break;
                    case 2:
                        c0441Pt.m1814new(new AbstractC3890vx.Cdo<>(key), Float.valueOf(value.m8852extends()));
                        break;
                    case 3:
                        c0441Pt.m1814new(new AbstractC3890vx.Cdo<>(key), Double.valueOf(value.m8851default()));
                        break;
                    case 4:
                        c0441Pt.m1814new(new AbstractC3890vx.Cdo<>(key), Integer.valueOf(value.m8853finally()));
                        break;
                    case 5:
                        c0441Pt.m1814new(new AbstractC3890vx.Cdo<>(key), Long.valueOf(value.m8854package()));
                        break;
                    case 6:
                        AbstractC3890vx.Cdo<?> cdo = new AbstractC3890vx.Cdo<>(key);
                        String m8855private = value.m8855private();
                        C0173Do.m399new(m8855private, "value.string");
                        c0441Pt.m1814new(cdo, m8855private);
                        break;
                    case 7:
                        AbstractC3890vx.Cdo<?> cdo2 = new AbstractC3890vx.Cdo<>(key);
                        Cthrow.Cfor m8781import = value.m8849abstract().m8781import();
                        C0173Do.m399new(m8781import, "value.stringSet.stringsList");
                        c0441Pt.m1814new(cdo2, E8.l(m8781import));
                        break;
                    case 8:
                        throw new C3868vb("Value not set.");
                }
            }
            return new C0441Pt((Map<AbstractC3890vx.Cdo<?>, Object>) C4120zr.b(c0441Pt.mo1811do()), true);
        } catch (Cwhile e) {
            throw new C3868vb(e);
        }
    }
}
