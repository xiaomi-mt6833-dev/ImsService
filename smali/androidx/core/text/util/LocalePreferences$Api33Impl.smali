.class Landroidx/core/text/util/LocalePreferences$Api33Impl;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    return-void
.end method

.method static getHourCycle(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 621
    nop

    .line 622
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator;->getDefaultHourCycle()Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v0

    .line 621
    invoke-static {v0}, Landroidx/core/text/util/LocalePreferences$Api33Impl;->getHourCycleType(Landroid/icu/text/DateFormat$HourCycle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHourCycleType(Landroid/icu/text/DateFormat$HourCycle;)Ljava/lang/String;
    .locals 2
    .param p0, "hourCycle"    # Landroid/icu/text/DateFormat$HourCycle;

    .line 628
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$HourCycle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 638
    const-string v0, ""

    return-object v0

    .line 636
    :pswitch_0
    const-string v0, "h24"

    return-object v0

    .line 634
    :pswitch_1
    const-string v0, "h23"

    return-object v0

    .line 632
    :pswitch_2
    const-string v0, "h12"

    return-object v0

    .line 630
    :pswitch_3
    const-string v0, "h11"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getResolvedTemperatureUnit(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 607
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    .line 608
    const-string v1, "weather"

    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->usage(Ljava/lang/String;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    sget-object v1, Landroid/icu/util/MeasureUnit;->CELSIUS:Landroid/icu/util/MeasureUnit;

    .line 609
    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 610
    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    .line 611
    .local v0, "nf":Landroid/icu/number/LocalizedNumberFormatter;
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/number/FormattedNumber;->getOutputUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "unit":Ljava/lang/String;
    const-string v2, "fahrenhe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    return-object v2

    .line 615
    :cond_0
    return-object v1
.end method
