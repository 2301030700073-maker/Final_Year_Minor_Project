package defpackage;

import java.util.Arrays;

/* renamed from: tf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3754tf {

    /* renamed from: do, reason: not valid java name */
    public static final C3754tf f15731do = new C3754tf();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f15732do = {"standard", "accelerate", "decelerate", "linear"};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f15733do = "identity";

    /* renamed from: tf$do, reason: invalid class name */
    public static class Cdo extends C3754tf {

        /* renamed from: do, reason: not valid java name */
        public final double f15734do;

        /* renamed from: for, reason: not valid java name */
        public final double f15735for;

        /* renamed from: if, reason: not valid java name */
        public final double f15736if;

        /* renamed from: new, reason: not valid java name */
        public final double f15737new;

        public Cdo(String str) {
            super.f15733do = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f15734do = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f15736if = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f15735for = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f15737new = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        @Override // defpackage.C3754tf
        /* renamed from: do */
        public final double mo8291do(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > 0.01d) {
                d2 *= 0.5d;
                d3 = m8293new(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double m8293new = m8293new(d4);
            double d5 = d3 + d2;
            double m8293new2 = m8293new(d5);
            double m8294try = m8294try(d4);
            return (((d - m8293new) * (m8294try(d5) - m8294try)) / (m8293new2 - m8293new)) + m8294try;
        }

        @Override // defpackage.C3754tf
        /* renamed from: if */
        public final double mo8292if(double d) {
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > 1.0E-4d) {
                d2 *= 0.5d;
                d3 = m8293new(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double d5 = d3 + d2;
            return (m8294try(d5) - m8294try(d4)) / (m8293new(d5) - m8293new(d4));
        }

        /* renamed from: new, reason: not valid java name */
        public final double m8293new(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            double d4 = d2 * d3 * d;
            double d5 = d3 * d * d;
            return (this.f15735for * d5) + (this.f15734do * d4) + (d * d * d);
        }

        /* renamed from: try, reason: not valid java name */
        public final double m8294try(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            double d4 = d2 * d3 * d;
            double d5 = d3 * d * d;
            return (this.f15737new * d5) + (this.f15736if * d4) + (d * d * d);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static C3754tf m8290for(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new Cdo(str);
        }
        switch (str) {
            case "accelerate":
                return new Cdo("cubic(0.4, 0.05, 0.8, 0.7)");
            case "decelerate":
                return new Cdo("cubic(0.0, 0.0, 0.2, 0.95)");
            case "linear":
                return new Cdo("cubic(1, 1, 0, 0)");
            case "standard":
                return new Cdo("cubic(0.4, 0.0, 0.2, 1)");
            default:
                Arrays.toString(f15732do);
                return f15731do;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public double mo8291do(double d) {
        return d;
    }

    /* renamed from: if, reason: not valid java name */
    public double mo8292if(double d) {
        return 1.0d;
    }

    public final String toString() {
        return this.f15733do;
    }
}
