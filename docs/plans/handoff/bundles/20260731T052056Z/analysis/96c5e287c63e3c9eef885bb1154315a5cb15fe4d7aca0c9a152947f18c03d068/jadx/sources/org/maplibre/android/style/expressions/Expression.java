package org.maplibre.android.style.expressions;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.style.layers.PropertyValue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Expression {
    public final Expression[] arguments;
    public final String operator;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class ExpressionLiteral extends Expression {
        public final Object literal;

        public ExpressionLiteral(Object obj) {
            Object obj2;
            if (obj instanceof String) {
                String str = (String) obj;
                int length = str.length();
                obj2 = str;
                if (length > 1) {
                    char charAt = str.charAt(0);
                    obj2 = str;
                    if (charAt == '\"') {
                        char charAt2 = str.charAt(str.length() - 1);
                        obj2 = str;
                        if (charAt2 == '\"') {
                            obj2 = str.substring(1, str.length() - 1);
                        }
                    }
                }
            } else {
                boolean z = obj instanceof Number;
                obj2 = obj;
                if (z) {
                    obj2 = Float.valueOf(((Number) obj).floatValue());
                }
            }
            this.literal = obj2;
        }

        @Override // org.maplibre.android.style.expressions.Expression
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
                return false;
            }
            Object obj2 = ((ExpressionLiteral) obj).literal;
            Object obj3 = this.literal;
            return obj3 != null ? obj3.equals(obj2) : obj2 == null;
        }

        @Override // org.maplibre.android.style.expressions.Expression
        public final int hashCode() {
            int hashCode = super.hashCode() * 31;
            Object obj = this.literal;
            return hashCode + (obj != null ? obj.hashCode() : 0);
        }

        @Override // org.maplibre.android.style.expressions.Expression
        public final Object[] toArray() {
            return new Object[]{"literal", this.literal};
        }

        @Override // org.maplibre.android.style.expressions.Expression
        public String toString() {
            Object obj = this.literal;
            if (!(obj instanceof String)) {
                return obj.toString();
            }
            return "\"" + obj + "\"";
        }

        public final Object toValue() {
            Object obj = this.literal;
            if (!(obj instanceof PropertyValue)) {
                return obj instanceof ExpressionLiteral ? ((ExpressionLiteral) obj).toValue() : obj;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("PropertyValue are not allowed as an expression literal, use value instead.");
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ExpressionLiteralArray extends ExpressionLiteral {
        @Override // org.maplibre.android.style.expressions.Expression.ExpressionLiteral, org.maplibre.android.style.expressions.Expression
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ExpressionLiteralArray.class != obj.getClass()) {
                return false;
            }
            return Arrays.equals((Object[]) this.literal, (Object[]) ((ExpressionLiteralArray) obj).literal);
        }

        @Override // org.maplibre.android.style.expressions.Expression.ExpressionLiteral, org.maplibre.android.style.expressions.Expression
        public final String toString() {
            Object[] objArr = (Object[]) this.literal;
            StringBuilder sb = new StringBuilder("[");
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                if (obj instanceof String) {
                    sb.append("\"");
                    sb.append(obj);
                    sb.append("\"");
                } else {
                    sb.append(obj);
                }
                if (i != objArr.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Interpolator extends Expression {
    }

    public Expression() {
        this.operator = null;
        this.arguments = null;
    }

    public static Expression get(String str) {
        return new Expression("get", new ExpressionLiteral(str));
    }

    public static Expression[] join(Expression[] expressionArr, Expression[] expressionArr2) {
        Expression[] expressionArr3 = new Expression[expressionArr.length + expressionArr2.length];
        System.arraycopy(expressionArr, 0, expressionArr3, 0, expressionArr.length);
        System.arraycopy(expressionArr2, 0, expressionArr3, expressionArr.length, expressionArr2.length);
        return expressionArr3;
    }

    public static Expression literal(Object obj) {
        if (!obj.getClass().isArray()) {
            if (!(obj instanceof Expression)) {
                return new ExpressionLiteral(obj);
            }
            Gson$$ExternalSyntheticBUOutline0.m$1("Can't convert an expression to a literal");
            return null;
        }
        int length = Array.getLength(obj);
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = Array.get(obj, i);
        }
        return new Expression("literal", new ExpressionLiteralArray(objArr));
    }

    public static Expression match(ExpressionLiteral expressionLiteral, Expression expression, FormBody.Builder... builderArr) {
        return new Expression("match", join(join(new Expression[]{expressionLiteral}, FormBody.Builder.toExpressionArray(builderArr)), new Expression[]{expression}));
    }

    public static FormBody.Builder stop(Object obj, Object obj2) {
        FormBody.Builder builder = new FormBody.Builder(29, false);
        builder.names = obj;
        builder.values = obj2;
        return builder;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Expression)) {
            return false;
        }
        Expression expression = (Expression) obj;
        String str = expression.operator;
        String str2 = this.operator;
        if (str2 == null ? str == null : str2.equals(str)) {
            return Arrays.deepEquals(this.arguments, expression.arguments);
        }
        return false;
    }

    public int hashCode() {
        String str = this.operator;
        return Arrays.hashCode(this.arguments) + ((str != null ? str.hashCode() : 0) * 31);
    }

    public Object[] toArray() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.operator);
        Expression[] expressionArr = this.arguments;
        if (expressionArr != null) {
            for (Expression expression : expressionArr) {
                if (expression instanceof ExpressionLiteral) {
                    arrayList.add(((ExpressionLiteral) expression).toValue());
                } else {
                    arrayList.add(expression.toArray());
                }
            }
        }
        return arrayList.toArray();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[\"");
        sb.append(this.operator);
        sb.append("\"");
        Expression[] expressionArr = this.arguments;
        if (expressionArr != null) {
            for (Expression expression : expressionArr) {
                sb.append(", ");
                sb.append(expression.toString());
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public Expression(String str, Expression... expressionArr) {
        this.operator = str;
        this.arguments = expressionArr;
    }
}
