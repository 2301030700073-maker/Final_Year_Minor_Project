package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonFormat {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Feature {
        private static final /* synthetic */ Feature[] $VALUES;
        public static final Feature ACCEPT_CASE_INSENSITIVE_PROPERTIES;
        public static final Feature ACCEPT_CASE_INSENSITIVE_VALUES;
        public static final Feature ACCEPT_SINGLE_VALUE_AS_ARRAY;
        public static final Feature ADJUST_DATES_TO_CONTEXT_TIME_ZONE;
        public static final Feature WRITE_DATES_WITH_ZONE_ID;
        public static final Feature WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS;
        public static final Feature WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED;
        public static final Feature WRITE_SORTED_MAP_ENTRIES;

        static {
            Feature feature = new Feature("ACCEPT_SINGLE_VALUE_AS_ARRAY", 0);
            ACCEPT_SINGLE_VALUE_AS_ARRAY = feature;
            Feature feature2 = new Feature("ACCEPT_CASE_INSENSITIVE_PROPERTIES", 1);
            ACCEPT_CASE_INSENSITIVE_PROPERTIES = feature2;
            Feature feature3 = new Feature("ACCEPT_CASE_INSENSITIVE_VALUES", 2);
            ACCEPT_CASE_INSENSITIVE_VALUES = feature3;
            Feature feature4 = new Feature("WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS", 3);
            WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS = feature4;
            Feature feature5 = new Feature("WRITE_DATES_WITH_ZONE_ID", 4);
            WRITE_DATES_WITH_ZONE_ID = feature5;
            Feature feature6 = new Feature("WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED", 5);
            WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED = feature6;
            Feature feature7 = new Feature("WRITE_SORTED_MAP_ENTRIES", 6);
            WRITE_SORTED_MAP_ENTRIES = feature7;
            Feature feature8 = new Feature("ADJUST_DATES_TO_CONTEXT_TIME_ZONE", 7);
            ADJUST_DATES_TO_CONTEXT_TIME_ZONE = feature8;
            $VALUES = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8};
        }

        public static Feature valueOf(String str) {
            return (Feature) Enum.valueOf(Feature.class, str);
        }

        public static Feature[] values() {
            return (Feature[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Features {
        public static final Features EMPTY = new Features(0, 0);
        public final int _disabled;
        public final int _enabled;

        public Features(int i, int i2) {
            this._enabled = i;
            this._disabled = i2;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != Features.class) {
                return false;
            }
            Features features = (Features) obj;
            return features._enabled == this._enabled && features._disabled == this._disabled;
        }

        public final int hashCode() {
            return this._disabled + this._enabled;
        }

        public final String toString() {
            return this == EMPTY ? "EMPTY" : String.format("(enabled=0x%x,disabled=0x%x)", Integer.valueOf(this._enabled), Integer.valueOf(this._disabled));
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Shape {
        private static final /* synthetic */ Shape[] $VALUES;
        public static final Shape ANY;
        public static final Shape ARRAY;
        public static final Shape BINARY;
        public static final Shape BOOLEAN;
        public static final Shape NATURAL;
        public static final Shape NUMBER;
        public static final Shape NUMBER_FLOAT;
        public static final Shape NUMBER_INT;
        public static final Shape OBJECT;
        public static final Shape SCALAR;
        public static final Shape STRING;

        static {
            Shape shape = new Shape("ANY", 0);
            ANY = shape;
            Shape shape2 = new Shape("NATURAL", 1);
            NATURAL = shape2;
            Shape shape3 = new Shape("SCALAR", 2);
            SCALAR = shape3;
            Shape shape4 = new Shape("ARRAY", 3);
            ARRAY = shape4;
            Shape shape5 = new Shape("OBJECT", 4);
            OBJECT = shape5;
            Shape shape6 = new Shape("NUMBER", 5);
            NUMBER = shape6;
            Shape shape7 = new Shape("NUMBER_FLOAT", 6);
            NUMBER_FLOAT = shape7;
            Shape shape8 = new Shape("NUMBER_INT", 7);
            NUMBER_INT = shape8;
            Shape shape9 = new Shape("STRING", 8);
            STRING = shape9;
            Shape shape10 = new Shape("BOOLEAN", 9);
            BOOLEAN = shape10;
            Shape shape11 = new Shape("BINARY", 10);
            BINARY = shape11;
            $VALUES = new Shape[]{shape, shape2, shape3, shape4, shape5, shape6, shape7, shape8, shape9, shape10, shape11};
        }

        public static Shape valueOf(String str) {
            return (Shape) Enum.valueOf(Shape.class, str);
        }

        public static Shape[] values() {
            return (Shape[]) $VALUES.clone();
        }

        public final boolean isNumeric() {
            return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
        }
    }

    OptBoolean lenient() default OptBoolean.DEFAULT;

    String locale() default "##default";

    String pattern() default "";

    Shape shape() default Shape.ANY;

    String timezone() default "##default";

    Feature[] with() default {};

    Feature[] without() default {};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Value implements Serializable {
        public static final Value EMPTY = new Value();
        public final Features _features;
        public final Boolean _lenient;
        public final Locale _locale;
        public final String _pattern;
        public final Shape _shape;
        public transient TimeZone _timezone;
        public final String _timezoneStr;

        public Value(String str, Shape shape, String str2, String str3, Features features, Boolean bool) {
            this(str, shape, (str2 == null || str2.length() == 0 || "##default".equals(str2)) ? null : new Locale(str2), (str3 == null || str3.length() == 0 || "##default".equals(str3)) ? null : str3, null, features, bool);
        }

        public static boolean _equal(Object obj, Serializable serializable) {
            if (obj == null) {
                return serializable == null;
            }
            if (serializable == null) {
                return false;
            }
            return obj.equals(serializable);
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != Value.class) {
                return false;
            }
            Value value = (Value) obj;
            return this._shape == value._shape && this._features.equals(value._features) && _equal(this._lenient, value._lenient) && _equal(this._timezoneStr, value._timezoneStr) && _equal(this._pattern, value._pattern) && _equal(this._timezone, value._timezone) && _equal(this._locale, value._locale);
        }

        public final Boolean getFeature(Feature feature) {
            Features features = this._features;
            features.getClass();
            int ordinal = 1 << feature.ordinal();
            if ((features._disabled & ordinal) != 0) {
                return Boolean.FALSE;
            }
            if ((features._enabled & ordinal) != 0) {
                return Boolean.TRUE;
            }
            return null;
        }

        public final boolean hasTimeZone() {
            if (this._timezone != null) {
                return true;
            }
            String str = this._timezoneStr;
            return (str == null || str.isEmpty()) ? false : true;
        }

        public final int hashCode() {
            String str = this._timezoneStr;
            int hashCode = str == null ? 1 : str.hashCode();
            String str2 = this._pattern;
            if (str2 != null) {
                hashCode ^= str2.hashCode();
            }
            int hashCode2 = this._shape.hashCode() + hashCode;
            Boolean bool = this._lenient;
            if (bool != null) {
                hashCode2 ^= bool.hashCode();
            }
            Locale locale = this._locale;
            if (locale != null) {
                hashCode2 += locale.hashCode();
            }
            return this._features.hashCode() ^ hashCode2;
        }

        public final String toString() {
            return "JsonFormat.Value(pattern=" + this._pattern + ",shape=" + this._shape + ",lenient=" + this._lenient + ",locale=" + this._locale + ",timezone=" + this._timezoneStr + ",features=" + this._features + ")";
        }

        public final Value withOverrides(Value value) {
            Value value2;
            if (value == null || value == (value2 = EMPTY) || value == this) {
                return this;
            }
            if (this == value2) {
                return value;
            }
            String str = value._pattern;
            if (str == null || str.isEmpty()) {
                str = this._pattern;
            }
            String str2 = str;
            Shape shape = value._shape;
            if (shape == Shape.ANY) {
                shape = this._shape;
            }
            Shape shape2 = shape;
            Locale locale = value._locale;
            if (locale == null) {
                locale = this._locale;
            }
            Locale locale2 = locale;
            Features features = value._features;
            Features features2 = this._features;
            if (features2 != null) {
                int i = features2._disabled;
                if (features != null) {
                    int i2 = features._disabled;
                    int i3 = features._enabled;
                    if (i2 != 0 || i3 != 0) {
                        int i4 = features2._enabled;
                        if (i4 != 0 || i != 0) {
                            int i5 = ((~i2) & i4) | i3;
                            int i6 = i2 | ((~i3) & i);
                            if (i5 != i4 || i6 != i) {
                                features2 = new Features(i5, i6);
                            }
                        }
                    }
                }
                features = features2;
            }
            Features features3 = features;
            Boolean bool = value._lenient;
            if (bool == null) {
                bool = this._lenient;
            }
            Boolean bool2 = bool;
            String str3 = value._timezoneStr;
            if (str3 == null || str3.isEmpty()) {
                str3 = this._timezoneStr;
            } else {
                this = value;
            }
            return new Value(str2, shape2, locale2, str3, this._timezone, features3, bool2);
        }

        public Value() {
            this("", Shape.ANY, "", "", Features.EMPTY, null);
        }

        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, Features features, Boolean bool) {
            this._pattern = str == null ? "" : str;
            this._shape = shape == null ? Shape.ANY : shape;
            this._locale = locale;
            this._timezone = timeZone;
            this._timezoneStr = str2;
            this._features = features == null ? Features.EMPTY : features;
            this._lenient = bool;
        }
    }
}
